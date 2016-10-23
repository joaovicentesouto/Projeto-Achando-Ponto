library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Alunos: João Vicente Souto e Valdivino Morais
-- Projeto SD : Reconhecimento de um ponto

entity DesenhaQuadrado is
  port (
    ativaQuadrado : in std_logic;
    addr, menorI, menorJ, maiorI, maiorJ : in integer; -- addr = endereço de leitura, convertido antes de entrada
    data : in std_logic_vector(7 downto 0);
    data_vga: out std_logic_vector(7 downto 0)
  );
end entity;

architecture behav of DesenhaQuadrado is

  signal i_addr, j_addr : integer;

begin
  -- Definindo o i e j do endereço atual // 160x120 frame
  i_addr <= ((addr - (addr rem 160))/160); -- formula i
  j_addr <= addr rem 160; -- formula j

  -- Output-logic
  data_vga <= "00000000" when ativaQuadrado='1' and
                    (menorI-15 <= i_addr) and (i_addr <= menorI-12) and
                    (menorJ-15 <= j_addr) and (j_addr <= maiorJ+15) else
              "00000000" when ativaQuadrado='1' and
                    (menorI-15 <= i_addr) and (i_addr <= maiorI) and
                    (((menorJ-15 <= j_addr) and (j_addr <= menorJ-12)) or
                     ((maiorJ+12 <= j_addr) and (j_addr <= maiorJ+15))) else
              "00000000" when ativaQuadrado='1' and
                    (maiorI+12 <= i_addr) and (i_addr <= maiorI+15) and
                    (menorJ-15 <= j_addr) and (j_addr <= maiorJ+15) else
              data;

end architecture;
