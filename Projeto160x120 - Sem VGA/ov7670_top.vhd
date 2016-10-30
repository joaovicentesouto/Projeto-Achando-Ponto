----------------------------------------------------------------------------------
-- Engineer: Mike Field <hamster@snap.net.nz>
--
-- Description: Top level for the OV7670 camera project.
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ov7670_top is
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

      btn          : in    STD_LOGIC_vector(1 downto 0);
		
		centroX1, centroX2, centroY1, centroY2  : out std_LOGIC_vector(6 downto 0) 
    );
end ov7670_top;

architecture Behavioral of ov7670_top is

	COMPONENT debounce
   PORT(
      clk : IN std_logic;
      i : IN std_logic;
      o : OUT std_logic
      );
   END COMPONENT;

   COMPONENT ov7670_controller
   PORT(
      clk   : IN    std_logic;
      resend: IN    std_logic;
      config_finished : out std_logic;
      siod  : INOUT std_logic;
      sioc  : OUT   std_logic;
      reset : OUT   std_logic;
      pwdn  : OUT   std_logic;
      xclk  : OUT   std_logic
      );
   END COMPONENT;

   COMPONENT frame_buffer
   PORT (
      data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
		rdclock		: IN STD_LOGIC ;
		wraddress		: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
		wrclock		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
   );
   END COMPONENT;
	

   COMPONENT ov7670_capture
   PORT(
      pclk : IN std_logic;
      vsync : IN std_logic;
      href  : IN std_logic;
      d     : IN std_logic_vector(7 downto 0);
      addr  : OUT std_logic_vector(14 downto 0);
      dout  : OUT std_logic_vector(7 downto 0);
      we    : OUT std_logic
      );
   END COMPONENT;

   component Top_AchandoPonto is
     port (
       wren, clk50 : in std_logic;
       reset : in Std_logic;
       wrAddress, rdAddress: in std_logic_vector(14 downto 0); -- wr = write / rd = read
       data_capture, data_ram : in std_logic_vector(7 downto 0);
       data_out : out std_logic_vector(7 downto 0);
		 centroX1, centroX2, centroY1, centroY2 : out std_logic_vector(6 downto 0)
     );
   end component;

   signal frame_addr  : std_logic_vector(14 downto 0);
   signal frame_pixel : std_logic_vector(7 downto 0);

   signal capture_addr  : std_logic_vector(14 downto 0);
   signal capture_data  : std_logic_vector(7 downto 0);
   signal capture_we    : std_logic;
   signal resend : std_logic;
   signal config_finished : std_logic;

   -- Sinais : achando ponto
   signal ram_data : std_logic_vector(7 downto 0);

begin

	btn_debounce: debounce
   PORT MAP(
      clk => clk50,
      i   => btn(1),
      o   => resend
   );

	fb : frame_buffer
	PORT MAP (
		data  => capture_data,
		rdaddress => (others=>'0'),
		rdclock  => '0',
		wraddress => capture_addr,
		wrclock  => OV7670_PCLK,
		wren   => capture_we,
      q => ram_data
  );
  led <= "0000000" & config_finished;

capture: ov7670_capture
  PORT MAP(
      pclk  => OV7670_PCLK,
      vsync => OV7670_VSYNC,
      href  => OV7670_HREF,
      d     => OV7670_D,
      addr  => capture_addr,
      dout  => capture_data,
      we    => capture_we
   );

controller: ov7670_controller
  PORT MAP(
      clk   => clk50,
      sioc  => ov7670_sioc,
      resend => resend,
      config_finished => config_finished,
      siod  => ov7670_siod,
      pwdn  => OV7670_PWDN,
      reset => OV7670_RESET,
      xclk  => OV7670_XCLK
   );

   AchandoPonto: Top_AchandoPonto
     port map (
       wren => capture_we,
       clk50 => clk50,
       reset => btn(0),
       wrAddress => capture_addr,
       rdAddress => (others=>'0'),
       data_capture => capture_data,
       data_ram => ram_data,
       data_out => frame_pixel,
		 centroX1 => centroX1,
		 centroX2 => centroX2,
		 centroY1 => centroY1,
		 centroY2 => centroY2
     );

end Behavioral;
