library IEEE;
use IEEE.Std_Logic_1164.all;

entity Decodificador7Seg is
port (
		Entrada: in std_logic_vector(3 downto 0);
		Saida: out std_logic_vector(6 downto 0));
end Decodificador7Seg;

architecture behavior of Decodificador7Seg is
begin
	-- Convertendo as saídas dos registradores e agenda de cinco bits um formato de sete bits correspondente aos dígitos que
	-- devem aparecer nos Hex's.
	Saida <= "1000000" when Entrada = "0000" else
				"1111001" when Entrada = "0001" else
				"0100100" when Entrada = "0010" else
				"0110000" when Entrada = "0011" else
				"0011001" when Entrada = "0100" else
				"0010010" when Entrada = "0101" else
				"0000010" when Entrada = "0110" else
				"1111000" when Entrada = "0111" else
				"0000000" when Entrada = "1000" else
				"0011000" when Entrada = "1001" else
				"1111111";
end behavior;
