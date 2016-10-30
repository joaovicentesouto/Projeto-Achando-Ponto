library ieee;
use ieee.std_logic_1164.all;

entity top_geral is
	port (
			CLOCK_50: in std_logic;
			
--			-- 00 // 09
--			GPIO_0(0) : out   STD_LOGIC;
--			GPIO_0(1) : inout STD_LOGIC;
--			GPIO_0(2) : out   STD_LOGIC;
--			GPIO_0(3) : out   STD_LOGIC;
--			GPIO_0(4) : in    STD_LOGIC;
--			GPIO_0(5) : in    STD_LOGIC;
--			GPIO_0(6) : in    STD_LOGIC;
--			GPIO_0(7) : out   STD_LOGIC;
--			
--			-- 26 // 35
--			GPIO_0(35 downto 28) : in    STD_LOGIC_VECTOR(7 downto 0);

			GPIO_0 : inout std_LOGIC_VECTOR(35 downto 0);
			
			-- led
			LEDR : out std_LOGIC_VECTOR(17 downto 0);
			
			-- Key 1->btn e 0->reset
			KEY : in std_LOGIC_VECTOR(1 downto 0);
			
			HEX0, HEX1, HEX2, HEX3 : out std_LOGIC_VECTOR(6 downto 0)
			
	);
end entity;

architecture behav of top_geral is

component ov7670_top is
    Port (
      clk50        : in    STD_LOGIC;
      OV7670_SIOC  : out   STD_LOGIC;
      OV7670_SIOD  : inout STD_LOGIC;
      OV7670_RESET : out   STD_LOGIC;
      OV7670_PWDN  : out   STD_LOGIC;
      OV7670_VSYNC : in    STD_LOGIC;
      OV7670_HREF  : in    STD_LOGIC;
      OV7670_PCLK  : in    STD_LOGIC;
      OV7670_XCLK  : out   STD_LOGIC;
      OV7670_D     : in    STD_LOGIC_VECTOR(7 downto 0);

      LED          : out    STD_LOGIC_VECTOR(7 downto 0);

      btn          : in    STD_LOGIC_VECTOR(1 downto 0);
		centroX1, centroX2, centroY1, centroY2  : out std_LOGIC_vector(6 downto 0)
    );
end component;

signal signal_led : std_LOGIC_VECTOR(7 downto 0);

signal x1, x2, y1, y2 : std_LOGIC_VECTOR(6 downto 0);

begin

top_comp: ov7670_top
	Port map (
      clk50 => CLOCK_50,
		-- 00 // 09
      OV7670_SIOC => GPIO_0(0),
      OV7670_SIOD => GPIO_0(1),
      OV7670_RESET => GPIO_0(2),
      OV7670_PWDN => GPIO_0(3),
      OV7670_VSYNC => GPIO_0(4),
      OV7670_HREF => GPIO_0(5),
      OV7670_PCLK => GPIO_0(6),
      OV7670_XCLK => GPIO_0(7),
		-- 26 // 35
      OV7670_D => GPIO_0(35 downto 28),

      LED => signal_led,

      btn => key,
		centroX1 => HEX0,
		centroX2 => HEX1,
		centroY1 => HEX2,
		centroY2 => HEX3
    );
	 
	 LEDR <= "0000000000" & signal_led;

end architecture;