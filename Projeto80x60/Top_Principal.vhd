library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Top_Principal is
  port (
    CLOCK_50 : in std_logic;
    CLOCK_27 : in std_logic;

    -- 1 até 10 -> dados
    -- 12 or 30 -> GND
    -- 29 -> 3.3v (VVC33)
    -- 31 até 40 -> dados
    GPIO_0(0) : out std_logic; -- sioc
    GPIO_0(1) : inout std_logic; -- siod
    GPIO_0(2) : in std_logic; -- vsync
    GPIO_0(3) : in std_logic; -- href
    GPIO_0(4) : in std_logic; -- pclk
    GPIO_0(40 downto 33) : in std_logic; -- D
    GPIO_0(5) : in std_logic; -- Reset
    GPIO_0(6) : in std_logic; -- pwdn

    -- ????????????????

    VGA_R      : OUT   std_logic_vector(3 downto 0);
    VGA_G    : OUT   std_logic_vector(3 downto 0);
    VGA_B     : OUT   std_logic_vector(3 downto 0);
    VGA_HS    : OUT   STD_LOGIC;
    VGA_VS    : OUT   STD_LOGIC;
  );
end entity;

architecture behav of Top_Principal is

  component Project1_top is
    PORT (
  	 CLOCK_50 : in STD_LOGIC;
  	 CLOCK_27 : in STD_LOGIC;

  	 OV7670_SIOC  : OUT   STD_LOGIC;
  	 OV7670_SIOD  : inout STD_LOGIC;
  	 OV7670_VSYNC : in    STD_LOGIC;
  	 OV7670_HREF  : in    STD_LOGIC;
  	 OV7670_PCLK  : in    STD_LOGIC;
  	 OV7670_XCLK  : OUT   STD_LOGIC;
  	 OV7670_D     : in    std_logic_vector(7 downto 0);
  	 OV7670_RESET : OUT   STD_LOGIC;
  	 OV7670_PWDN  : OUT   STD_LOGIC;

  	 VGA_R      : OUT   std_logic_vector(3 downto 0);
  	 VGA_G    : OUT   std_logic_vector(3 downto 0);
  	 VGA_B     : OUT   std_logic_vector(3 downto 0);
  	 VGA_HS    : OUT   STD_LOGIC;
  	 VGA_VS    : OUT   STD_LOGIC;

  	 HEX0 : OUT std_logic_vector( 6 downto 0 );
  	 HEX1 : OUT std_logic_vector( 6 downto 0 );
  	 HEX2 : OUT std_logic_vector( 6 downto 0 );
  	 HEX3 : OUT std_logic_vector( 6 downto 0 );
  	 SW : in std_logic_vector( 9 downto 0 );
  	 KEY : in std_logic_vector( 3 downto 0);
  	 LEDG          : OUT    std_logic_vector(7 downto 0);
  	 LEDR : OUT std_logic_vector( 9 downto 0 );

  	 ----------------	Audio CODEC   	------------------------
  	 AUD_ADCLRCK : OUT STD_LOGIC;			--	Audio CODEC ADC LR Clock
  	 AUD_ADCDAT	: in STD_LOGIC;			--	Audio CODEC ADC Data
  	 AUD_DACLRCK	: OUT STD_LOGIC;		--	Audio CODEC DAC LR Clock
  	 AUD_DACDAT	: OUT STD_LOGIC;		--	Audio CODEC DAC Data
  	 AUD_BCLK : inout STD_LOGIC;			--	Audio CODEC Bit-Stream Clock
  	 AUD_XCK : OUT STD_LOGIC			--	System clock
         );
  end component;


begin



end architecture;
