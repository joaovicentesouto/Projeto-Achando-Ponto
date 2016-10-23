library ieee;
use ieee. std_logic_1164.all;
use ieee.numeric_std.all;

-- Alunos: João Vicente Souto e Valdivino Morais
-- Projeto SD : Reconhecimento de um ponto

entity PosicaoPonto is
  port (
    inicio_ij, verifica_ij: in std_logic;
    addr : in integer; -- endereço de escrita, convertido antes de entrada
    menorIFinal, menorJFinal, maiorIorIFinal, maiorIorJFinal: out integer;
    pixelNoAglomerado : out std_logic
  );
end entity;

architecture behav of PosicaoPonto is

  -- 160x120 frame

  signal menorI, menorJ : integer := 32768; -- limite RAM
  signal maiorI, maiorJ : integer := 0;
  signal i_addr, j_addr : integer;

begin
  -- Definindo o i e j do endereço atual
  i_addr <= (addr - (addr rem 160))/160; -- formula i
  j_addr <= addr rem 160; -- formula j

  -- Memory-logic
  process(verifica_ij, inicio_ij) is
  begin
    if inicio_ij='1' then
      menorI <= 32768; -- limite RAM
      menorJ <= 32768; -- limite RAM
      maiorI <= 0;
      maiorJ <= 0;
    elsif rising_edge(verifica_ij) then
        -- menorI
        if i_addr < menorI and i_addr=(maiorI-1) and (j_addr>=(menorJ-1) and j_addr<=(maiorJ+1)) then
          -- mesmo nunca tendo um i menor?
          menorI <= i_addr;
        else
          menorI <= menorI;
        end if;

        -- maiorI
        if i_addr > maiorI and i_addr=(maiorI+1) and (j_addr>=(menorJ-1) and j_addr<=(maiorJ+1)) then
          maiorI <= i_addr;
        else
          maiorI <= maiorI;
        end if;

        -- menorJ
        if j_addr < menorJ and j_addr=(menorJ-1) and i_addr<=(maiorI+1) then
          menorJ <= j_addr;
        else
          menorJ <= menorJ;
        end if;

        -- maiorJ
        if j_addr > maiorJ and j_addr=(maiorJ+1) and i_addr<=(maiorI+1) then
          maiorJ <= j_addr;
        else
          maiorJ <= maiorJ;
        end if;
      end if;
  end process;

  -- Output-logic
  pixelNoAglomerado <= '1' when i_addr>=(menorI-1) and i_addr<=(maiorI+1) and
                         j_addr>=(menorJ-1) and j_addr<=(maiorJ+1) else '0';
  menorIFinal <= menorI;
  menorJFinal <= menorJ;
  maiorIorIFinal <= maiorI;
  maiorIorJFinal <= maiorJ;

end architecture;
