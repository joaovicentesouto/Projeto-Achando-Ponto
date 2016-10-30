library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity centroPonto is
	port (
		ativa : in std_logic;
		menorI, menorJ, maiorI, maiorJ : in integer;
		centroX1, centroX2, centroY1, centroY2 : out std_logic_vector(6 downto 0)
	);
end entity;

architecture behav of centroPonto is

component Decodificador7Seg is
port (
		Entrada: in std_logic_vector(3 downto 0);
		Saida: out std_logic_vector(6 downto 0));
end component;

signal centroX, centroY : integer;
signal unidX, dezX, unidY, dezY : integer;
signal x1, x2, y1, y2 : std_logic_vector(3 downto 0) := "1111";

begin

	centroX <= maiorI - menorI;
	centroY <= maiorJ - menorJ;

	unidX <= centroX rem 10;
	dezX <= (centroX-(centroX rem 10))/10;
	unidY <= centroY rem 10;
	dezY <= (centroY-(centroY rem 10))/10;
	
	-- x1 = unidades e x2 = decimais.
	x1 <= std_logic_vector(to_unsigned(unidX, x1'length)) when ativa='1' else x1;
	x2 <= std_logic_vector(to_unsigned(dezX, x2'length)) when ativa='1' else x2;
	
	-- y1 = unidades e y2 = decimais.
	y1 <= std_logic_vector(to_unsigned(unidY, y1'length)) when ativa='1' else y1;
	y2 <= std_logic_vector(to_unsigned(dezY, y2'length)) when ativa='1' else y2;

	dec_X1: Decodificador7Seg
	port map(
		Entrada => x1,
		Saida => centroX1
	);
	
	dec_X2: Decodificador7Seg
	port map(
		Entrada => x2,
		Saida => centroX2
	);
	
	dec_Y1: Decodificador7Seg
	port map(
		Entrada => y1,
		Saida => centroY1
	);
	
	dec_Y2: Decodificador7Seg
	port map(
		Entrada => y2,
		Saida => centroY2
	);


end architecture;