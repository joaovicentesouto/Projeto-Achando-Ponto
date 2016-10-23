----------------------------------------------------------------------------------
-- Engineer: Mike Field <hamster@snap.net.nz>
-- 
-- Description: Generate analog 800x600 VGA, double-doublescanned from 19200 bytes of RAM
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vga is
    Port ( 
      clk50       : in  STD_LOGIC;
      vga_red     : out STD_LOGIC_VECTOR(2 downto 0);
      vga_green   : out STD_LOGIC_VECTOR(2 downto 0);
      vga_blue    : out STD_LOGIC_VECTOR(2 downto 1);
      vga_hsync   : out STD_LOGIC;
      vga_vsync   : out STD_LOGIC;
      frame_addr  : out STD_LOGIC_VECTOR(14 downto 0);
      frame_pixel : in  STD_LOGIC_VECTOR(7 downto 0)
    );
end vga;

architecture Behavioral of vga is
   -- Timing constants
   constant hRez       : natural := 800;
   constant vRez       : natural := 600;

   constant hMaxCount  : natural := 1056;
   constant hStartSync : natural := 840;
   constant hEndSync   : natural := 968;
   constant vMaxCount  : natural := 628;
   constant vStartSync : natural := 601;
   constant vEndSync   : natural := 605;
   constant hsync_active : std_logic := '1';
   constant vsync_active : std_logic := '1';

   signal hCounter : unsigned(10 downto 0) := (others => '0');
   signal vCounter : unsigned(9 downto 0) := (others => '0');
   signal address : unsigned(16 downto 0) := (others => '0');
   signal blank : std_logic := '1';

-- Alteração: introduz os signal i's e j's
   signal iMin : unsigned(9 downto 0) := (others => '1');
   signal jMin : unsigned(10 downto 0) := (others => '1');
   signal iMax : unsigned(9 downto 0) := (others => '0');
   signal jMax : unsigned(10 downto 0) := (others => '0');

begin
   frame_addr <= std_logic_vector(address(16 downto 2));
   
   process(clk50)
   begin
      if rising_edge(clk50) then
         -- Count the lines and rows      
         if hCounter = hMaxCount-1 then
            hCounter <= (others => '0');
            if vCounter = vMaxCount-1 then
               vCounter <= (others => '0');
            else
-- Alteração: verifica se o pixel é não-branco e retorna i's
		    if blank = '0' then
			if frame_pixel(7 downto 5) < "110" and frame_pixel(4 downto 2) < "110" then
				if iMin > vCounter then
					iMin <= vCounter; 
				end if;
				if iMax < vCounter then
					iMax <= vCounter; 
				end if;
			end if;
		    end if;
		   vCounter <= vCounter+1;
            end if;
         else
-- Alteração: verifica se o pixel é não-branco e retorna j's
		 if blank = '0' then
			if frame_pixel(7 downto 5) < "110" and frame_pixel(4 downto 2) < "110" then
				if jMin > hCounter then
					jMin <= hCounter; 
				end if;
				if iMax < hCounter then
					jMax <= hCounter; 
				end if;
			end if;
		    end if;
            hCounter <= hCounter+1;
			end if;

         if blank = '0' then
-- Alteração: desenha o quadrado a 8 pixels de distancia
-- Utilizei aquele seu método sem for
		if vCounter = vMaxCount-2 then
			if ((hCounter = jMax + 8) or (hCounter = jMin - 8)) then
				if ((vCounter  >= iMin - 8) and (vCounter  <= iMax + 8)) then
					vga_red   <= (others => '1');
            			vga_green <= (others => '0');
            			vga_blue  <= (others => '0');
				end if;
			end if;
		elsif ((vCounter = iMax + 8) or (vCounter = iMin - 8)) then 
			if ((hCounter  >= jMin - 8) and (hCounter  <= jMax + 8)) then
						vga_red   <= (others => '1');
            		vga_green <= (others => '0');
            		vga_blue  <= (others => '0');
		 	end if;
		else
            vga_red   <= frame_pixel(7 downto 5);
            vga_green <= frame_pixel(4 downto 2);
            vga_blue  <= frame_pixel(1 downto 0);
		end if;
         else
            vga_red   <= (others => '0');
            vga_green <= (others => '0');
            vga_blue  <= (others => '0');
         end if;
   
         if vCounter  >= vRez then
            address <= (others => '0');
            blank <= '1';
         else 
            if hCounter  >= 80 and hCounter  < 720 then
               blank <= '0';
               if hCounter = 719 then
                  if vCounter(1 downto 0) /= "11" then
                     address <= address - 639;
                  else
                      address <= address+1;
                  end if;
               else
                  address <= address+1;
               end if;
            else
               blank <= '1';
            end if;
         end if;
   
         -- Are we in the hSync pulse? (one has been added to include frame_buffer_latency)
         if hCounter > hStartSync and hCounter <= hEndSync then
            vga_hSync <= hsync_active;
         else
            vga_hSync <= not hsync_active;
         end if;

         -- Are we in the vSync pulse?
         if vCounter >= vStartSync and vCounter < vEndSync then
            vga_vSync <= vsync_active;
         else
            vga_vSync <= not vsync_active;
         end if;
      end if;
   end process;
end Behavioral;