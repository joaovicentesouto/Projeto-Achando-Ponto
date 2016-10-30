----------------------------------------------------------------------------------
-- Project1_top.vhd
--
-- LEDG<OddNumbers>: Show K_EY pressed
-- LEDG0 flashing: once per second.
-- LEDG4: Registers finished loading
-- Register default value check LEDG7.
--
-- K_EY0: Adjust motion threshold (Debug)
-- K_EY1: Adjust motion threshold (Debug2)
-- K_EY2: Resend registers
-- K_EY3: Reset MAX for LEDDisplay
--
-- LED Display:  Displays the maximum motion of pixels (for debugging).
--
-- S_W0 : Colour mode (RGB, YCbCr)
-- S_W1 : 30/60 FPS
-- S_W2 -> S_W4 : Colour matrix test
-- S_W5 : Adjust speed of motion detector
-- S_W6 : Freeze the capture
-- S_W7 : Surv mode, display motion
-- S_W8 : Surv mode, example
-- S_W9 : Normal capture mode.
--
-- Left motion: High pitched sound
-- Right motion: Low pitched sound
-- Center: Gurgle sound.
--
-- The flowchart
--    Top -> buffer, vga, capture data, camera driver, audio
--    camera driver -> settings for camera, i2c to camera to set settings
--
--
-- Future Prospects: 1. Save frame to SD Card.
-- 2. PWM a DC motor to turn camera via left/right detection.
-- 3. Cleanup TOP.vhd
--
-- j.inspir3@gmail.com, Git: BurningKoy
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Project1_top is
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

	 VGA_R      : OUT   std_logic_vector(3 downto 0);
	 VGA_G    : OUT   std_logic_vector(3 downto 0);
	 VGA_B     : OUT   std_logic_vector(3 downto 0);
	 VGA_HS    : OUT   STD_LOGIC;
	 VGA_VS    : OUT   STD_LOGIC;
	 
	 S_W : in std_logic_vector( 9 downto 0 );
	 K_EY : in std_logic_vector( 3 downto 0);
	 
	 centroX1, centroX2, centroY1, centroY2 : out std_logic_vector(6 downto 0)
       );
end Project1_top;

architecture rtl of Project1_top is

  ----------------------------------------------------------------
  --- COMPONENTS
  ----------------------------------------------------------------


  --siod and sioc are used to communicate I'2C
  -- Controller uses I2C to set register data to the
  --  OV7670.
  COMPONENT OV7670_driver
    PORT
    (
      iclk50   : in    STD_LOGIC;
      config_finished : OUT STD_LOGIC;
      sioc  : OUT   STD_LOGIC;
      siod  : inout STD_LOGIC;
      S_W : in std_logic_vector( 9 downto 0 );
      K_EY : in std_logic_vector( 3 downto 0 )
    --readcheck : OUT std_logic_vector (7 downto 0)
    );
  END COMPONENT;

  -- OVCapture gets the data from OV7670 camera

  COMPONENT OV7670_capture
    PORT
    (
      pclk : IN STD_LOGIC; -- camera clock
      vsync : IN STD_LOGIC;
      href  : IN STD_LOGIC;
      dport  : IN std_logic_vector(7 downto 0); -- data
      surv : in STD_LOGIC;
      S_W5 : in STD_LOGIC;
      S_W6 : in STD_LOGIC;
      addr  : OUT std_logic_vector(12 downto 0); --test 18, 14 previous
      dout  : OUT std_logic_vector(15 downto 0);
      we    : OUT STD_LOGIC; -- write enable
      maxx    : OUT natural -- write enable
    );
  END COMPONENT;

  -- VGA determines the active area as well as gets the data from frame buffer
  --  Does the final setting of  r g b  output to the screen
  COMPONENT vga_driver
    Port
    (
      iVGA_CLK       : in  STD_LOGIC;
      r     : OUT std_logic_vector(3 downto 0);
      g   : OUT std_logic_vector(3 downto 0);
      b    : OUT std_logic_vector(3 downto 0);
      hs   : OUT STD_LOGIC;
      vs   : OUT STD_LOGIC;
      surv : in STD_LOGIC;
      rgb : in STD_LOGIC;
      debug : in natural;
      debug2 : in natural;
      newframe : OUT STD_LOGIC;
      leftmotion : OUT natural;
      rightmotion : OUT natural;
      buffer_addr : OUT std_logic_vector(12 downto 0);
      buffer_data : in  std_logic_vector(15 downto 0)
    );
  end COMPONENT;


  --The frame buffer is reference by OVdriver
  -- and data input is by OVCapture
  COMPONENT framebuffer
    PORT
    (
      rdclock		: IN STD_LOGIC ;
      rdaddress	: IN std_logic_vector (12 downto 0);
      q		: OUT std_logic_vector (15 DOWNTO 0);--data OUT

      wrclock		: IN STD_LOGIC;
      wraddress	: IN std_logic_vector (12 downto 0);
      data		: IN std_logic_vector (15 DOWNTO 0);
      wren		: IN STD_LOGIC
    );
  END COMPONENT;

  -- Implementação do nosso projeto

  component Top_AchandoPonto is
    port (
      wren, clk_50 : in std_logic;
      reset : in Std_logic;
      wrAddress, rdAddress: in std_logic_vector(12 downto 0); -- wr = write / rd = read
      data_capture, data_ram : in std_logic_vector(15 DOWNTO 0);
      data_out : out std_logic_vector(15 DOWNTO 0);
		centroX1, centroX2, centroY1, centroY2 : out std_logic_vector(6 downto 0)
    );
  end component;

  ----------------------------------------------------------------
  --- Variables
  ----------------------------------------------------------------
  signal xclk  : STD_LOGIC := '0';

  constant clk_50_FREQ : integer := 50000000;
  constant BLINK_FREQ : integer := 1;
  constant CNT_MAX : integer := clk_50_FREQ/BLINK_FREQ/2-1;
  constant BUZZ_MAX : integer := clk_50_FREQ*3/BLINK_FREQ/2-1;

  --Local wires
  signal cnt : unsigned(24 downto 0);
  signal blink : STD_LOGIC;

  signal buffer_addr  : std_logic_vector(12 downto 0) := (others => '0');
  signal buffer_data  : std_logic_vector(15 downto 0) := (others => '0');
  signal capture_addr  : std_logic_vector(12 downto 0);
  signal capture_data  : std_logic_vector(15 downto 0);
  signal capture_we    : STD_LOGIC; -- write enable.
  signal config_finished : STD_LOGIC;
  --modes
  signal surveillance : STD_LOGIC;
  signal surveillance2 : STD_LOGIC;
  signal S_W5 : STD_LOGIC;
  signal S_W6 : STD_LOGIC;
  signal survmode : STD_LOGIC;
  signal rgb : STD_LOGIC;

  --buttons
  signal K_EY0push : STD_LOGIC;
  signal K_EY1push : STD_LOGIC;
  signal K_EY2push : STD_LOGIC;
  signal K_EY3push : STD_LOGIC;

  --debugging
  signal mSEG7 : std_logic_vector ( 15 downto 0) := (others => '0');
  signal debug : natural := 0;
  signal debug2 : natural := 0;
  signal max : natural := 0;
  signal leftmotion : natural := 0;
  signal rightmotion : natural := 0;
  signal newframe : STD_LOGIC;
  signal summax : natural := 0;
  --signal motionaddr : std_logic_vector(3 downto 0) := (others => '0');
  --signal sums : unsigned(15 downto 0) := (others => '0');
  
    --audio
  constant BUZZER_THRESHOLD : natural := 7500; -- magic number from heuristicsis max should be 320*480 however..
  signal left : STD_LOGIC;
  signal AUD_CTRL_CLK : STD_LOGIC;
  signal buzzer : STD_LOGIC := '0';
  signal buzzercnt : unsigned(31 downto 0);

  -- Sinal necessario para o componente Top_AchandoPonto.vhd
  signal data_to_vga : std_logic_vector(15 DOWNTO 0);
  -- gambiarra para ignorar esses sinais
  signal LG          : std_logic_vector(7 downto 0);
  signal LR : std_logic_vector( 9 downto 0 );
  signal H0, H1, H2, H3 : std_logic_vector( 6 downto 0 );

begin

  ----------------------------------------------------------------
  --- PORTS
  ----------------------------------------------------------------
  with K_EY(0) select K_EY0push <= '1' when '0', '0' when others;
  with K_EY(1) select K_EY1push <= '1' when '0', '0' when others;
  -- K_EY 3 used in registers.
  with K_EY(2) select K_EY2push <= '1' when '0', '0' when others;
  with K_EY(3) select K_EY3push <= '1' when '0', '0' when others;
  --S_W1 to 6 used by ovregisters
  with S_W(0) select rgb <= '1' when '1', '0' when others;
  with S_W(5) select S_W5 <= '1' when '1', '0' when others;
  with S_W(6) select S_W6 <= '1' when '1', '0' when others;
  with S_W(7) select surveillance <= '1' when '1', '0' when others;
  with S_W(8) select surveillance2 <= '1' when '1', '0' when others;

  OV7670_RESET <= '1';                   -- Normal mode
  OV7670_PWDN  <= '0';                   -- Power device up
  OV7670_XCLK <=  xclk;
  --AUD_ADCLRCK	<=	AUD_DACLRCK;
  --AUD_XCK     <=  AUD_CTRL_CLK;


  ovdr : OV7670_driver port map (
    iclk50  => xclk,
    config_finished => config_finished,
    sioc  => ov7670_sioc,
    siod  => ov7670_siod,
    S_W => S_W,
    K_EY => K_EY
  --readcheck => readcheck
  );


  vgadr : vga_driver port map (
    iVGA_CLK       => xclk,
    r    => VGA_R,
    g   => VGA_G,
    b    => VGA_B,
    hs   => VGA_HS,
    vs   => VGA_VS,
    surv => surveillance,
    rgb => rgb,
    debug => debug,
    debug2 => debug2,
    newframe => newframe,
    leftmotion => leftmotion,
    rightmotion => rightmotion,
    buffer_addr  => buffer_addr,
    buffer_data => data_to_vga
  );

  ovcap : OV7670_capture port map (
    pclk  => OV7670_PCLK,
    vsync => OV7670_VSYNC,
    href  => OV7670_HREF,
    dport  => OV7670_D,
    surv => survmode,
    S_W5 => S_W5,
    S_W6 => S_W6,
    addr  => capture_addr,
    dout  => capture_data,
    maxx => max,
    we    => capture_we
  );

  ---------------Nosso Componente-----------------------
  achandoPonto: Top_AchandoPonto port map (
      wren => capture_we,
      clk_50 => clk_50,
      reset => '1',
      wrAddress => capture_addr,
      rdAddress => buffer_addr,
      data_capture => capture_data,
      data_ram => buffer_data,
      data_out => data_to_vga,
		centroX1 => centroX1,
		centroX2 => centroX2,
		centroY1 => centroY1,
		centroY2 => centroY2
  );
  -----------------------------------------------------

  fb: framebuffer port map (
    rdclock  => clk_50,
    rdaddress => buffer_addr,
    q => buffer_data,

    wrclock => OV7670_PCLK,
    wraddress => capture_addr,
    data  => capture_data,
    wren   => capture_we
  );


  ----------------------------------------------------------------
  --- Processes
  ----------------------------------------------------------------
  process(clk_50)

  begin
    if rising_edge(clk_50) then
      if cnt >= CNT_MAX then
	cnt <= (others => '0');
	blink <= not blink;
	mSEG7 <= std_logic_vector(to_unsigned(summax,mSEG7'length));
      --mSEG7 <= std_logic_vector(to_unsigned(max,mSEG7'length));
      --mSEG7 <= std_logic_vector(sums);
      else
	cnt <= cnt + 1;
      end if;

      if leftmotion + rightmotion > summax then
	summax <= leftmotion + rightmotion;
      elsif K_EY3push = '1' then
	summax <= 0;

      end if;


      if (to_unsigned(leftmotion + rightmotion, 16) > (BUZZER_THRESHOLD)) then
	if leftmotion > rightmotion  then
	  left <= '1';
	else
	  left <= '0';
	end if;
	buzzer <= '1';
	buzzercnt <= (others => '0');
      end if;

      if buzzer = '1' then
	if buzzercnt >= BUZZ_MAX then
	  buzzer <= '0';
	  buzzercnt <= (others => '0');
	else
	  buzzercnt <= buzzercnt + 1;
	end if;
      end if;
      xclk <= not xclk; --System clock for OV and VGA 25mhz
    end if;
  end process;

  process(K_EY0push)
  begin
    if K_EY0push = '1' then
      debug <= debug + 1;
    end if;
  end process;

  process(K_EY1push)
  begin
    if K_EY1push = '1' then
      debug2 <= debug2 + 1;
    end if;
  end process;

  process(surveillance,surveillance2)
  begin
    survmode <= surveillance or surveillance2;
  end process;

  ----------------------------------------------------------------
  --- LEDS
  ----------------------------------------------------------------
  LG <= K_EY3push & '0' & K_EY2push & '0' & K_EY1push & config_finished & K_EY0push & blink;
  LR <= S_W(9) & S_W(8) & S_W(7) & S_W(6) & S_W(5) & S_W(4) & S_W(3) & S_W(2) & S_W(1) & S_W(0);

end rtl;


--  Sliding window average
--  process(motion)
--constant MDATASIZE := 8
--type MDATA is array (100 downto 0) of unsigned(7 downto 0);
--variable motiondata : MDATA;
--variable sum : unsigned(15 downto 0) := (others => '0');
--begin
--motiondata(to_integer(unsigned(motionaddr))) := to_unsigned(motion, MDATASIZE);
--sum := (others => '0');
--for n in motiondata'range loop
--motionmax := motiondata(n);
--motionmin := motiondata(n);
--end loop;
--sums <= sum;
--motionaddr <= std_logic_vector(unsigned(motionaddr) + 1);
--end process;

--  process(leftmotion, rightmotion, newframe)
--begin
--if newframe = '1' then
--sumleft <= 0;
--sumright <= 0;
--else
--sumleft <= leftmotion;
--sumright <= rightmotion;
--end if;

--end process;
