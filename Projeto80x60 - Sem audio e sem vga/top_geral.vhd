library ieee;
use ieee.std_logic_1164.all;

entity top_geral is
	port (
			CLOCK_50: in std_logic;
			CLOCK_27: in std_LOGIC;

			GPIO_0 : inout std_LOGIC_VECTOR(35 downto 0);
			
			-- led
			LEDR : out std_LOGIC_VECTOR(17 downto 0);
			
			-- Key 1->btn e 0->reset
			SW : in std_LOGIC_VECTOR(9 downto 0);
			KEY : in std_LOGIC_VECTOR(3 downto 0);
			
			HEX0, HEX1, HEX2, HEX3 : out std_LOGIC_VECTOR(6 downto 0)
			
	);
end entity;

architecture behav of top_geral is

component Project1_top is
  PORT (
	 clk_50 : in STD_LOGIC;
	 clk_27 : in STD_LOGIC;

	 OV7670_SIOC  : OUT   STD_LOGIC;
	 OV7670_SIOD  : inout STD_LOGIC;
	 OV7670_VSYNC : in    STD_LOGIC;
	 OV7670_HREF  : in    STD_LOGIC;
	 OV7670_PCLK  : in    STD_LOGIC;
	 OV7670_XCLK  : OUT   STD_LOGIC;
	 OV7670_D     : in    std_logic_vector(7 downto 0);
	 OV7670_RESET : OUT   STD_LOGIC;
	 OV7670_PWDN  : OUT   STD_LOGIC;
	 
	 S_W : in std_logic_vector( 9 downto 0 );
	 K_EY : in std_logic_vector( 3 downto 0);
	 
	 centroX1, centroX2, centroY1, centroY2 : out std_logic_vector(6 downto 0)
       );
end component;

signal r, g, b : std_logic_VECTOR(3 downto 0);
signal hs, vs : std_logic;
signal x1, x2, y1, y2 : std_LOGIC_VECTOR(6 downto 0);

signal h, i, j, k, l, m : std_LOGIC;

begin

	 top_comp:  Project1_top PORT MAP(
		 clk_50 => CLOCK_50,
		 clk_27 => CLOCK_27,

		 OV7670_SIOC => GPIO_0(0),
		 OV7670_SIOD => GPIO_0(1),
		 OV7670_VSYNC => GPIO_0(4),
		 OV7670_HREF => GPIO_0(5),
		 OV7670_PCLK => GPIO_0(6),
		 OV7670_XCLK => GPIO_0(7),
		 OV7670_D => GPIO_0(35 downto 28),
		 OV7670_RESET => GPIO_0(2),
		 OV7670_PWDN => GPIO_0(3),
		 
		 S_W => SW,
		 K_EY => KEY,
		 
		 centroX1 => HEX0,
		 centroX2 => HEX1,
		 centroY1 => HEX2,
		 centroY2 => HEX3
    );


end architecture;