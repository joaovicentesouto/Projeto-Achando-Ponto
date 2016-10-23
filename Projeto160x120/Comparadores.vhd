library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Alunos: João Vicente Souto e Valdivino Morais
-- Projeto SD : Reconhecimento de um ponto

entity Comparadores is
  port (
    wren, pixelNoAglomerado, achouPrimeiroPreto, estadoInicio, estadoPrimeiroPreto, contaPretosNoPonto: in std_logic;
    addr, r, g, b : in integer; -- endereço de escrita, convertido antes de entrada
    pixelPreto, addrIgualZero, fimDaImagem, pontoTerminou : out std_logic
  );
end entity;

architecture behav of Comparadores is

  signal pretosNoPonto : integer := 0;
  signal terminou : std_logic;

begin

  contador: process(wren)
  begin
    if rising_edge(wren) then
      if achouPrimeiroPreto='1' and pixelNoAglomerado='1' then
        if (addr rem 160)=0 then
          pretosNoPonto <= 0;
        elsif contaPretosNoPonto='1' then
          pretosNoPonto <= pretosNoPonto+1;
        end if;
      end if;
    end if;
  end process;

  pixelPreto <= '1' when ( (r<6 and g<6 and b<2) and (r<=7 and g<6 and b<2) and
                         (r<6 and g<=7 and b<2) and (r<6 and g<6 and b<=3) ) else '0';
  addrIgualZero <= '1' when addr=0 else '0';
  fimDaImagem <= '1' when addr>=19199 else '0';
  -- terminou é um sinal para poder gerar a saída pontoTerminou.
  terminou <= '1' when achouPrimeiroPreto='1' and pretosNoPonto=0 and (addr rem 160)=159 else
              '0' when estadoInicio='1' else terminou;
  pontoTerminou <= terminou;

end architecture;
