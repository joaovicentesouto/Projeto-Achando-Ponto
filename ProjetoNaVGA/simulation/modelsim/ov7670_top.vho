-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/18/2016 17:00:41"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ov7670_top IS
    PORT (
	clk50 : IN std_logic;
	OV7670_SIOC : OUT std_logic;
	OV7670_SIOD : INOUT std_logic;
	OV7670_RESET : OUT std_logic;
	OV7670_PWDN : OUT std_logic;
	OV7670_VSYNC : IN std_logic;
	OV7670_HREF : IN std_logic;
	OV7670_PCLK : IN std_logic;
	OV7670_XCLK : OUT std_logic;
	OV7670_D : IN std_logic_vector(7 DOWNTO 0);
	LED : OUT std_logic_vector(7 DOWNTO 0);
	vga_red : OUT std_logic_vector(2 DOWNTO 0);
	vga_green : OUT std_logic_vector(2 DOWNTO 0);
	vga_blue : OUT std_logic_vector(2 DOWNTO 1);
	vga_hsync : OUT std_logic;
	vga_vsync : OUT std_logic;
	btn : IN std_logic
	);
END ov7670_top;

-- Design Ports Information
-- OV7670_SIOD	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OV7670_SIOC	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OV7670_RESET	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OV7670_PWDN	=>  Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OV7670_XCLK	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED[0]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED[1]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED[2]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED[3]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED[4]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED[5]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED[6]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED[7]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_red[0]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_red[1]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_red[2]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_green[0]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_green[1]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_green[2]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_blue[1]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_blue[2]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_hsync	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_vsync	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk50	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OV7670_PCLK	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OV7670_VSYNC	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OV7670_HREF	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OV7670_D[3]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OV7670_D[4]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OV7670_D[0]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OV7670_D[1]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OV7670_D[2]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OV7670_D[5]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OV7670_D[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OV7670_D[7]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ov7670_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50 : std_logic;
SIGNAL ww_OV7670_SIOC : std_logic;
SIGNAL ww_OV7670_RESET : std_logic;
SIGNAL ww_OV7670_PWDN : std_logic;
SIGNAL ww_OV7670_VSYNC : std_logic;
SIGNAL ww_OV7670_HREF : std_logic;
SIGNAL ww_OV7670_PCLK : std_logic;
SIGNAL ww_OV7670_XCLK : std_logic;
SIGNAL ww_OV7670_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_red : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_vga_green : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_vga_blue : std_logic_vector(2 DOWNTO 1);
SIGNAL ww_vga_hsync : std_logic;
SIGNAL ww_vga_vsync : std_logic;
SIGNAL ww_btn : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clk50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OV7670_PCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Inst_vga|Add2~4_combout\ : std_logic;
SIGNAL \Inst_vga|Add3~0_combout\ : std_logic;
SIGNAL \Inst_vga|Add3~10_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21~portadataout\ : std_logic;
SIGNAL \Inst_vga|Add4~0_combout\ : std_logic;
SIGNAL \Inst_vga|Add4~4_combout\ : std_logic;
SIGNAL \Inst_vga|Add5~10_combout\ : std_logic;
SIGNAL \Inst_vga|Add5~12_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25~portadataout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~0_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~8_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|taken~regout\ : std_logic;
SIGNAL \capture|we~regout\ : std_logic;
SIGNAL \Inst_vga|Add1~17\ : std_logic;
SIGNAL \Inst_vga|Add1~18_combout\ : std_logic;
SIGNAL \btn_debounce|c[2]~28_combout\ : std_logic;
SIGNAL \btn_debounce|c[4]~32_combout\ : std_logic;
SIGNAL \btn_debounce|c[6]~36_combout\ : std_logic;
SIGNAL \btn_debounce|c[15]~54_combout\ : std_logic;
SIGNAL \btn_debounce|c[18]~60_combout\ : std_logic;
SIGNAL \btn_debounce|c[22]~68_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Equal0~0_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Mux2~2_combout\ : std_logic;
SIGNAL \Inst_vga|Equal6~0_combout\ : std_logic;
SIGNAL \Inst_vga|Equal6~2_combout\ : std_logic;
SIGNAL \Inst_vga|Equal5~2_combout\ : std_logic;
SIGNAL \Inst_vga|Equal1~0_combout\ : std_logic;
SIGNAL \Inst_vga|Equal2~0_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~0_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~2_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~7_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~11_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~18_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~19_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~2_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Equal4~1_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Equal4~2_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~5_combout\ : std_logic;
SIGNAL \btn_debounce|Equal0~1_combout\ : std_logic;
SIGNAL \capture|href_last~regout\ : std_logic;
SIGNAL \capture|we~0_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~12_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~15_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~18_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~21_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~22_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~24_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~25_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~27_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~28_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~30_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~31_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~33_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~34_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~18_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~19_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~20_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~21_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~22_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~23_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~24_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~25_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~26_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~27_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~28_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~29_combout\ : std_logic;
SIGNAL \Inst_vga|iMin[6]~6_combout\ : std_logic;
SIGNAL \Inst_vga|iMin[4]~8_combout\ : std_logic;
SIGNAL \Inst_vga|jMin[2]~9_combout\ : std_logic;
SIGNAL \Inst_vga|jMin[0]~11_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr[1]~60_combout\ : std_logic;
SIGNAL \OV7670_HREF~combout\ : std_logic;
SIGNAL \capture|href_last~feeder_combout\ : std_logic;
SIGNAL \clk50~combout\ : std_logic;
SIGNAL \clk50~clkctrl_outclk\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~19_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~1\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~3\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~4_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~5\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~7\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~9\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~10_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~6_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Equal3~1_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[0]~8_combout\ : std_logic;
SIGNAL \btn_debounce|c[0]~24_combout\ : std_logic;
SIGNAL \btn~combout\ : std_logic;
SIGNAL \btn_debounce|c[0]~25\ : std_logic;
SIGNAL \btn_debounce|c[1]~27\ : std_logic;
SIGNAL \btn_debounce|c[2]~29\ : std_logic;
SIGNAL \btn_debounce|c[3]~30_combout\ : std_logic;
SIGNAL \btn_debounce|c[3]~31\ : std_logic;
SIGNAL \btn_debounce|c[4]~33\ : std_logic;
SIGNAL \btn_debounce|c[5]~34_combout\ : std_logic;
SIGNAL \btn_debounce|c[5]~35\ : std_logic;
SIGNAL \btn_debounce|c[6]~37\ : std_logic;
SIGNAL \btn_debounce|c[7]~38_combout\ : std_logic;
SIGNAL \btn_debounce|c[7]~39\ : std_logic;
SIGNAL \btn_debounce|c[8]~41\ : std_logic;
SIGNAL \btn_debounce|c[9]~42_combout\ : std_logic;
SIGNAL \btn_debounce|c[9]~43\ : std_logic;
SIGNAL \btn_debounce|c[10]~44_combout\ : std_logic;
SIGNAL \btn_debounce|c[10]~45\ : std_logic;
SIGNAL \btn_debounce|c[11]~46_combout\ : std_logic;
SIGNAL \btn_debounce|c[11]~47\ : std_logic;
SIGNAL \btn_debounce|c[12]~48_combout\ : std_logic;
SIGNAL \btn_debounce|c[12]~49\ : std_logic;
SIGNAL \btn_debounce|c[13]~50_combout\ : std_logic;
SIGNAL \btn_debounce|c[13]~51\ : std_logic;
SIGNAL \btn_debounce|c[14]~52_combout\ : std_logic;
SIGNAL \btn_debounce|c[14]~53\ : std_logic;
SIGNAL \btn_debounce|c[15]~55\ : std_logic;
SIGNAL \btn_debounce|c[16]~56_combout\ : std_logic;
SIGNAL \btn_debounce|c[16]~57\ : std_logic;
SIGNAL \btn_debounce|c[17]~59\ : std_logic;
SIGNAL \btn_debounce|c[18]~61\ : std_logic;
SIGNAL \btn_debounce|c[19]~62_combout\ : std_logic;
SIGNAL \btn_debounce|c[19]~63\ : std_logic;
SIGNAL \btn_debounce|c[20]~65\ : std_logic;
SIGNAL \btn_debounce|c[21]~66_combout\ : std_logic;
SIGNAL \btn_debounce|c[20]~64_combout\ : std_logic;
SIGNAL \btn_debounce|c[21]~67\ : std_logic;
SIGNAL \btn_debounce|c[22]~69\ : std_logic;
SIGNAL \btn_debounce|c[23]~70_combout\ : std_logic;
SIGNAL \btn_debounce|Equal0~6_combout\ : std_logic;
SIGNAL \btn_debounce|c[17]~58_combout\ : std_logic;
SIGNAL \btn_debounce|Equal0~5_combout\ : std_logic;
SIGNAL \btn_debounce|c[8]~40_combout\ : std_logic;
SIGNAL \btn_debounce|Equal0~2_combout\ : std_logic;
SIGNAL \btn_debounce|c[1]~26_combout\ : std_logic;
SIGNAL \btn_debounce|Equal0~0_combout\ : std_logic;
SIGNAL \btn_debounce|Equal0~3_combout\ : std_logic;
SIGNAL \btn_debounce|Equal0~4_combout\ : std_logic;
SIGNAL \btn_debounce|Equal0~7_combout\ : std_logic;
SIGNAL \btn_debounce|o~regout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[0]~9\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[1]~10_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[1]~11\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[2]~12_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[2]~13\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[3]~14_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[3]~15\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[4]~16_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[4]~17\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[5]~18_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[5]~19\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[6]~20_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[6]~21\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|address[7]~22_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Equal0~2_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Equal0~3_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Equal0~1_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Equal0~4_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|divider[4]~0_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|divider~1_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|divider~2_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~2_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Equal4~0_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~11\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~13\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~14_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Equal3~0_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr[0]~3_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr[5]~35_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~16_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~13_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~11_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~32_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~29_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~26_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~23_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~20_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~17_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~14_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~9_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~4_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~6_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr[31]~8_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~17_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~16_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~15_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~14_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~13_combout\ : std_logic;
SIGNAL \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~12_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~11_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~10_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~9_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~8_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~7_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~6_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~5_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~4_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~3_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~2_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~1_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|data_sr~0_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr~10_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|process_0~0_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|process_0~1_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|busy_sr[0]~7_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Mux2~0_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Mux2~1_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Mux2~3_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Add0~12_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|Mux2~4_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|sioc~feeder_combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|sioc~regout\ : std_logic;
SIGNAL \controller|sys_clk~0_combout\ : std_logic;
SIGNAL \controller|sys_clk~regout\ : std_logic;
SIGNAL \Inst_vga|Add0~15\ : std_logic;
SIGNAL \Inst_vga|Add0~16_combout\ : std_logic;
SIGNAL \Inst_vga|Add1~1\ : std_logic;
SIGNAL \Inst_vga|Add1~2_combout\ : std_logic;
SIGNAL \Inst_vga|Add1~3\ : std_logic;
SIGNAL \Inst_vga|Add1~5\ : std_logic;
SIGNAL \Inst_vga|Add1~7\ : std_logic;
SIGNAL \Inst_vga|Add1~8_combout\ : std_logic;
SIGNAL \Inst_vga|Add1~14_combout\ : std_logic;
SIGNAL \Inst_vga|Add1~4_combout\ : std_logic;
SIGNAL \Inst_vga|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_vga|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_vga|hCounter~1_combout\ : std_logic;
SIGNAL \Inst_vga|Add1~9\ : std_logic;
SIGNAL \Inst_vga|Add1~11\ : std_logic;
SIGNAL \Inst_vga|Add1~12_combout\ : std_logic;
SIGNAL \Inst_vga|Add1~13\ : std_logic;
SIGNAL \Inst_vga|Add1~15\ : std_logic;
SIGNAL \Inst_vga|Add1~16_combout\ : std_logic;
SIGNAL \Inst_vga|Add1~10_combout\ : std_logic;
SIGNAL \Inst_vga|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_vga|hCounter~0_combout\ : std_logic;
SIGNAL \Inst_vga|Equal0~3_combout\ : std_logic;
SIGNAL \Inst_vga|Add0~17\ : std_logic;
SIGNAL \Inst_vga|Add0~18_combout\ : std_logic;
SIGNAL \Inst_vga|vCounter~0_combout\ : std_logic;
SIGNAL \Inst_vga|Add0~0_combout\ : std_logic;
SIGNAL \Inst_vga|process_0~1_combout\ : std_logic;
SIGNAL \Inst_vga|Equal1~1_combout\ : std_logic;
SIGNAL \Inst_vga|Add0~1\ : std_logic;
SIGNAL \Inst_vga|Add0~2_combout\ : std_logic;
SIGNAL \Inst_vga|Add0~3\ : std_logic;
SIGNAL \Inst_vga|Add0~4_combout\ : std_logic;
SIGNAL \Inst_vga|vCounter~1_combout\ : std_logic;
SIGNAL \Inst_vga|Add0~5\ : std_logic;
SIGNAL \Inst_vga|Add0~6_combout\ : std_logic;
SIGNAL \Inst_vga|Add0~7\ : std_logic;
SIGNAL \Inst_vga|Add0~9\ : std_logic;
SIGNAL \Inst_vga|Add0~10_combout\ : std_logic;
SIGNAL \Inst_vga|vCounter~3_combout\ : std_logic;
SIGNAL \Inst_vga|Add0~11\ : std_logic;
SIGNAL \Inst_vga|Add0~12_combout\ : std_logic;
SIGNAL \Inst_vga|vCounter~4_combout\ : std_logic;
SIGNAL \Inst_vga|Add0~13\ : std_logic;
SIGNAL \Inst_vga|Add0~14_combout\ : std_logic;
SIGNAL \Inst_vga|Add0~8_combout\ : std_logic;
SIGNAL \Inst_vga|vCounter~2_combout\ : std_logic;
SIGNAL \Inst_vga|LessThan1~1_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan1~3_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan1~5_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan1~7_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan1~9_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan1~11_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan1~13_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan1~15_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan1~17_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan1~18_combout\ : std_logic;
SIGNAL \Inst_vga|LessThan10~0_combout\ : std_logic;
SIGNAL \Inst_vga|LessThan10~1_combout\ : std_logic;
SIGNAL \Inst_vga|Add1~6_combout\ : std_logic;
SIGNAL \Inst_vga|LessThan11~0_combout\ : std_logic;
SIGNAL \Inst_vga|process_0~6_combout\ : std_logic;
SIGNAL \Inst_vga|blank~0_combout\ : std_logic;
SIGNAL \Inst_vga|blank~1_combout\ : std_logic;
SIGNAL \Inst_vga|blank~regout\ : std_logic;
SIGNAL \Inst_vga|address[0]~17_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~0_combout\ : std_logic;
SIGNAL \Inst_vga|address[5]~50_combout\ : std_logic;
SIGNAL \Inst_vga|address[5]~49_combout\ : std_logic;
SIGNAL \Inst_vga|address[5]~51_combout\ : std_logic;
SIGNAL \Inst_vga|address[5]~52_combout\ : std_logic;
SIGNAL \Inst_vga|address[0]~18\ : std_logic;
SIGNAL \Inst_vga|address[1]~19_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~1\ : std_logic;
SIGNAL \Inst_vga|Add7~2_combout\ : std_logic;
SIGNAL \Inst_vga|address[1]~20\ : std_logic;
SIGNAL \Inst_vga|address[2]~22\ : std_logic;
SIGNAL \Inst_vga|address[3]~23_combout\ : std_logic;
SIGNAL \Inst_vga|address[2]~21_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~3\ : std_logic;
SIGNAL \Inst_vga|Add7~4_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~5\ : std_logic;
SIGNAL \Inst_vga|Add7~6_combout\ : std_logic;
SIGNAL \Inst_vga|address[3]~24\ : std_logic;
SIGNAL \Inst_vga|address[4]~26\ : std_logic;
SIGNAL \Inst_vga|address[5]~27_combout\ : std_logic;
SIGNAL \Inst_vga|address[4]~25_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~7\ : std_logic;
SIGNAL \Inst_vga|Add7~8_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~9\ : std_logic;
SIGNAL \Inst_vga|Add7~10_combout\ : std_logic;
SIGNAL \Inst_vga|address[5]~28\ : std_logic;
SIGNAL \Inst_vga|address[6]~29_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~11\ : std_logic;
SIGNAL \Inst_vga|Add7~12_combout\ : std_logic;
SIGNAL \Inst_vga|address[6]~30\ : std_logic;
SIGNAL \Inst_vga|address[7]~31_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~13\ : std_logic;
SIGNAL \Inst_vga|Add7~14_combout\ : std_logic;
SIGNAL \Inst_vga|address[7]~32\ : std_logic;
SIGNAL \Inst_vga|address[8]~33_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~15\ : std_logic;
SIGNAL \Inst_vga|Add7~16_combout\ : std_logic;
SIGNAL \Inst_vga|address[8]~34\ : std_logic;
SIGNAL \Inst_vga|address[9]~35_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~17\ : std_logic;
SIGNAL \Inst_vga|Add7~18_combout\ : std_logic;
SIGNAL \Inst_vga|address[9]~36\ : std_logic;
SIGNAL \Inst_vga|address[10]~37_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~19\ : std_logic;
SIGNAL \Inst_vga|Add7~20_combout\ : std_logic;
SIGNAL \Inst_vga|address[10]~38\ : std_logic;
SIGNAL \Inst_vga|address[11]~40\ : std_logic;
SIGNAL \Inst_vga|address[12]~41_combout\ : std_logic;
SIGNAL \Inst_vga|address[11]~39_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~21\ : std_logic;
SIGNAL \Inst_vga|Add7~22_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~23\ : std_logic;
SIGNAL \Inst_vga|Add7~24_combout\ : std_logic;
SIGNAL \Inst_vga|address[12]~42\ : std_logic;
SIGNAL \Inst_vga|address[13]~44\ : std_logic;
SIGNAL \Inst_vga|address[14]~46\ : std_logic;
SIGNAL \Inst_vga|address[15]~47_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~25\ : std_logic;
SIGNAL \Inst_vga|Add7~27\ : std_logic;
SIGNAL \Inst_vga|Add7~29\ : std_logic;
SIGNAL \Inst_vga|Add7~30_combout\ : std_logic;
SIGNAL \Inst_vga|address[15]~48\ : std_logic;
SIGNAL \Inst_vga|address[16]~53_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~31\ : std_logic;
SIGNAL \Inst_vga|Add7~32_combout\ : std_logic;
SIGNAL \Inst_vga|address[14]~45_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~28_combout\ : std_logic;
SIGNAL \capture|address[0]~15_combout\ : std_logic;
SIGNAL \OV7670_VSYNC~combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]~0_combout\ : std_logic;
SIGNAL \capture|address[2]~19_combout\ : std_logic;
SIGNAL \capture|Equal0~0_combout\ : std_logic;
SIGNAL \capture|Equal0~1_combout\ : std_logic;
SIGNAL \capture|address[5]~25_combout\ : std_logic;
SIGNAL \capture|address[7]~29_combout\ : std_logic;
SIGNAL \capture|Equal0~2_combout\ : std_logic;
SIGNAL \capture|address[11]~37_combout\ : std_logic;
SIGNAL \capture|Equal0~3_combout\ : std_logic;
SIGNAL \capture|process_0~0_combout\ : std_logic;
SIGNAL \capture|cnt[0]~0_combout\ : std_logic;
SIGNAL \capture|Add1~0_combout\ : std_logic;
SIGNAL \capture|cnt[1]~1_combout\ : std_logic;
SIGNAL \capture|address[14]~43_combout\ : std_logic;
SIGNAL \capture|address[0]~16\ : std_logic;
SIGNAL \capture|address[1]~17_combout\ : std_logic;
SIGNAL \capture|address[1]~18\ : std_logic;
SIGNAL \capture|address[2]~20\ : std_logic;
SIGNAL \capture|address[3]~21_combout\ : std_logic;
SIGNAL \capture|address[3]~22\ : std_logic;
SIGNAL \capture|address[4]~24\ : std_logic;
SIGNAL \capture|address[5]~26\ : std_logic;
SIGNAL \capture|address[6]~27_combout\ : std_logic;
SIGNAL \capture|address[6]~28\ : std_logic;
SIGNAL \capture|address[7]~30\ : std_logic;
SIGNAL \capture|address[8]~31_combout\ : std_logic;
SIGNAL \capture|address[8]~32\ : std_logic;
SIGNAL \capture|address[9]~34\ : std_logic;
SIGNAL \capture|address[10]~35_combout\ : std_logic;
SIGNAL \capture|address[10]~36\ : std_logic;
SIGNAL \capture|address[11]~38\ : std_logic;
SIGNAL \capture|address[12]~39_combout\ : std_logic;
SIGNAL \capture|address[12]~40\ : std_logic;
SIGNAL \capture|address[13]~41_combout\ : std_logic;
SIGNAL \capture|address[13]~42\ : std_logic;
SIGNAL \capture|address[14]~44_combout\ : std_logic;
SIGNAL \OV7670_PCLK~combout\ : std_logic;
SIGNAL \OV7670_PCLK~clkctrl_outclk\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode894w[3]~0_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode894w[3]~0_combout\ : std_logic;
SIGNAL \Inst_vga|address[13]~43_combout\ : std_logic;
SIGNAL \Inst_vga|Add7~26_combout\ : std_logic;
SIGNAL \capture|d_latch[6]~feeder_combout\ : std_logic;
SIGNAL \capture|hold_green[1]~feeder_combout\ : std_logic;
SIGNAL \capture|dout[3]~feeder_combout\ : std_logic;
SIGNAL \capture|address[4]~23_combout\ : std_logic;
SIGNAL \capture|address[9]~33_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w[3]~0_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode884w[3]~0_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode884w[3]~0_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~20_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~21_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~22_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode874w[3]~0_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode874w[3]~0_combout\ : std_logic;
SIGNAL \capture|d_latch[7]~feeder_combout\ : std_logic;
SIGNAL \capture|hold_green[2]~feeder_combout\ : std_logic;
SIGNAL \capture|dout[4]~feeder_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~25_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~26_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode934w[3]~0_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode934w[3]~0_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode914w[3]~0_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode914w[3]~0_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode904w[3]~0_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~23_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode924w[3]~0_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode924w[3]~0_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~24_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~27_combout\ : std_logic;
SIGNAL \capture|d_latch[2]~feeder_combout\ : std_logic;
SIGNAL \capture|hold_red[2]~feeder_combout\ : std_logic;
SIGNAL \capture|dout[7]~feeder_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~11_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~12_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~9_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~10_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~13_combout\ : std_logic;
SIGNAL \Inst_vga|iMin[3]~0_combout\ : std_logic;
SIGNAL \Inst_vga|iMin[3]~1_combout\ : std_logic;
SIGNAL \Inst_vga|iMax[9]~0_combout\ : std_logic;
SIGNAL \Inst_vga|Add2~1\ : std_logic;
SIGNAL \Inst_vga|Add2~3\ : std_logic;
SIGNAL \Inst_vga|Add2~5\ : std_logic;
SIGNAL \Inst_vga|Add2~7\ : std_logic;
SIGNAL \Inst_vga|Add2~9\ : std_logic;
SIGNAL \Inst_vga|Add2~10_combout\ : std_logic;
SIGNAL \Inst_vga|Add2~11\ : std_logic;
SIGNAL \Inst_vga|Add2~12_combout\ : std_logic;
SIGNAL \Inst_vga|Equal5~0_combout\ : std_logic;
SIGNAL \Inst_vga|Equal5~1_combout\ : std_logic;
SIGNAL \Inst_vga|Add2~2_combout\ : std_logic;
SIGNAL \Inst_vga|Equal5~3_combout\ : std_logic;
SIGNAL \Inst_vga|Add2~6_combout\ : std_logic;
SIGNAL \Inst_vga|Equal5~4_combout\ : std_logic;
SIGNAL \Inst_vga|Equal5~5_combout\ : std_logic;
SIGNAL \Inst_vga|iMin[1]~11_combout\ : std_logic;
SIGNAL \Inst_vga|iMin[9]~3_combout\ : std_logic;
SIGNAL \Inst_vga|iMin[8]~4_combout\ : std_logic;
SIGNAL \Inst_vga|iMin[7]~5_combout\ : std_logic;
SIGNAL \Inst_vga|LessThan0~1_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan0~3_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan0~5_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan0~7_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan0~9_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan0~11_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan0~13_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan0~15_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan0~17_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan0~18_combout\ : std_logic;
SIGNAL \Inst_vga|iMin[3]~2_combout\ : std_logic;
SIGNAL \Inst_vga|Equal6~1_combout\ : std_logic;
SIGNAL \Inst_vga|iMin[5]~7_combout\ : std_logic;
SIGNAL \Inst_vga|iMin[3]~9_combout\ : std_logic;
SIGNAL \Inst_vga|Add3~1\ : std_logic;
SIGNAL \Inst_vga|Add3~3\ : std_logic;
SIGNAL \Inst_vga|Add3~5\ : std_logic;
SIGNAL \Inst_vga|Add3~7\ : std_logic;
SIGNAL \Inst_vga|Add3~8_combout\ : std_logic;
SIGNAL \Inst_vga|Add3~6_combout\ : std_logic;
SIGNAL \Inst_vga|Equal6~4_combout\ : std_logic;
SIGNAL \Inst_vga|Add3~2_combout\ : std_logic;
SIGNAL \Inst_vga|Add3~4_combout\ : std_logic;
SIGNAL \Inst_vga|Equal6~3_combout\ : std_logic;
SIGNAL \Inst_vga|Equal6~5_combout\ : std_logic;
SIGNAL \Inst_vga|process_0~0_combout\ : std_logic;
SIGNAL \capture|d_latch[0]~feeder_combout\ : std_logic;
SIGNAL \capture|hold_red[0]~feeder_combout\ : std_logic;
SIGNAL \capture|dout[5]~feeder_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~1_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~2_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~3_combout\ : std_logic;
SIGNAL \Inst_vga|vga_red~0_combout\ : std_logic;
SIGNAL \Inst_vga|vga_red~1_combout\ : std_logic;
SIGNAL \Inst_vga|jMin[8]~3_combout\ : std_logic;
SIGNAL \Inst_vga|jMin[10]~1_combout\ : std_logic;
SIGNAL \Inst_vga|jMin[9]~2_combout\ : std_logic;
SIGNAL \Inst_vga|jMin[7]~4_combout\ : std_logic;
SIGNAL \Inst_vga|jMin[6]~5_combout\ : std_logic;
SIGNAL \Inst_vga|jMin[5]~6_combout\ : std_logic;
SIGNAL \Inst_vga|jMin[4]~7_combout\ : std_logic;
SIGNAL \Inst_vga|jMin[3]~8_combout\ : std_logic;
SIGNAL \Inst_vga|Add1~0_combout\ : std_logic;
SIGNAL \Inst_vga|jMin[1]~10_combout\ : std_logic;
SIGNAL \Inst_vga|LessThan4~1_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan4~3_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan4~5_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan4~7_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan4~9_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan4~11_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan4~13_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan4~15_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan4~17_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan4~19_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan4~20_combout\ : std_logic;
SIGNAL \Inst_vga|jMin[3]~0_combout\ : std_logic;
SIGNAL \Inst_vga|Add4~1\ : std_logic;
SIGNAL \Inst_vga|Add4~3\ : std_logic;
SIGNAL \Inst_vga|Add4~5\ : std_logic;
SIGNAL \Inst_vga|Add4~7\ : std_logic;
SIGNAL \Inst_vga|Add4~9\ : std_logic;
SIGNAL \Inst_vga|Add4~11\ : std_logic;
SIGNAL \Inst_vga|Add4~12_combout\ : std_logic;
SIGNAL \Inst_vga|Add4~10_combout\ : std_logic;
SIGNAL \Inst_vga|Add4~8_combout\ : std_logic;
SIGNAL \Inst_vga|Add4~6_combout\ : std_logic;
SIGNAL \Inst_vga|Add4~2_combout\ : std_logic;
SIGNAL \Inst_vga|LessThan8~1_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan8~3_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan8~5_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan8~7_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan8~9_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan8~11_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan8~13_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan8~15_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan8~17_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan8~19_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan8~20_combout\ : std_logic;
SIGNAL \Inst_vga|LessThan5~1_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan5~3_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan5~5_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan5~7_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan5~9_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan5~11_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan5~13_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan5~15_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan5~17_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan5~18_combout\ : std_logic;
SIGNAL \Inst_vga|jMax[10]~0_combout\ : std_logic;
SIGNAL \Inst_vga|Add5~1\ : std_logic;
SIGNAL \Inst_vga|Add5~3\ : std_logic;
SIGNAL \Inst_vga|Add5~5\ : std_logic;
SIGNAL \Inst_vga|Add5~7\ : std_logic;
SIGNAL \Inst_vga|Add5~9\ : std_logic;
SIGNAL \Inst_vga|Add5~11\ : std_logic;
SIGNAL \Inst_vga|Add5~13\ : std_logic;
SIGNAL \Inst_vga|Add5~14_combout\ : std_logic;
SIGNAL \Inst_vga|Add5~8_combout\ : std_logic;
SIGNAL \Inst_vga|Add5~6_combout\ : std_logic;
SIGNAL \Inst_vga|Add5~4_combout\ : std_logic;
SIGNAL \Inst_vga|LessThan9~1_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan9~3_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan9~5_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan9~7_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan9~9_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan9~11_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan9~13_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan9~15_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan9~17_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan9~19_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan9~20_combout\ : std_logic;
SIGNAL \Inst_vga|Add2~8_combout\ : std_logic;
SIGNAL \Inst_vga|Add2~0_combout\ : std_logic;
SIGNAL \Inst_vga|LessThan7~1_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan7~3_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan7~5_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan7~7_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan7~9_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan7~11_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan7~13_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan7~15_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan7~17_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan7~18_combout\ : std_logic;
SIGNAL \Inst_vga|Add3~9\ : std_logic;
SIGNAL \Inst_vga|Add3~11\ : std_logic;
SIGNAL \Inst_vga|Add3~12_combout\ : std_logic;
SIGNAL \Inst_vga|iMin[2]~12_combout\ : std_logic;
SIGNAL \Inst_vga|iMin[0]~10_combout\ : std_logic;
SIGNAL \Inst_vga|LessThan6~1_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan6~3_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan6~5_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan6~7_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan6~9_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan6~11_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan6~13_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan6~15_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan6~17_cout\ : std_logic;
SIGNAL \Inst_vga|LessThan6~18_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~15_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~1_combout\ : std_logic;
SIGNAL \Inst_vga|Add5~2_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~0_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~3_combout\ : std_logic;
SIGNAL \Inst_vga|Add5~0_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~4_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~5_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~6_combout\ : std_logic;
SIGNAL \Inst_vga|Add4~13\ : std_logic;
SIGNAL \Inst_vga|Add4~14_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~10_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~12_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~9_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~8_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~13_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~14_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~20_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green[0]~21_combout\ : std_logic;
SIGNAL \capture|d_latch[1]~feeder_combout\ : std_logic;
SIGNAL \capture|dout[6]~feeder_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~6_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~7_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~4_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~5_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~8_combout\ : std_logic;
SIGNAL \Inst_vga|vga_red~2_combout\ : std_logic;
SIGNAL \Inst_vga|vga_red~3_combout\ : std_logic;
SIGNAL \capture|d_latch[5]~feeder_combout\ : std_logic;
SIGNAL \capture|hold_green[0]~feeder_combout\ : std_logic;
SIGNAL \capture|dout[2]~feeder_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~16_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~17_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~14_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~15_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green~16_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green~17_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green~18_combout\ : std_logic;
SIGNAL \Inst_vga|vga_green~19_combout\ : std_logic;
SIGNAL \capture|d_latch[3]~feeder_combout\ : std_logic;
SIGNAL \capture|dout[0]~feeder_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~30_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~31_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~28_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~29_combout\ : std_logic;
SIGNAL \Inst_vga|vga_blue~0_combout\ : std_logic;
SIGNAL \Inst_vga|vga_blue~1_combout\ : std_logic;
SIGNAL \capture|d_latch[4]~feeder_combout\ : std_logic;
SIGNAL \capture|dout[1]~feeder_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~34_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~35_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41~portadataout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~32_combout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~33_combout\ : std_logic;
SIGNAL \Inst_vga|vga_blue~2_combout\ : std_logic;
SIGNAL \Inst_vga|vga_blue~3_combout\ : std_logic;
SIGNAL \Inst_vga|LessThan13~0_combout\ : std_logic;
SIGNAL \Inst_vga|process_0~2_combout\ : std_logic;
SIGNAL \Inst_vga|process_0~3_combout\ : std_logic;
SIGNAL \Inst_vga|vga_hsync~regout\ : std_logic;
SIGNAL \Inst_vga|process_0~4_combout\ : std_logic;
SIGNAL \Inst_vga|process_0~5_combout\ : std_logic;
SIGNAL \Inst_vga|vga_vsync~regout\ : std_logic;
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode934w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode914w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode894w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode874w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \btn_debounce|c\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \Inst_vga|vga_red\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Inst_vga|vga_blue\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \Inst_vga|jMin\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_vga|iMin\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Inst_vga|hCounter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode857w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \capture|hold_red\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \capture|hold_green\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \capture|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \capture|d_latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \capture|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \capture|address\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \controller|Inst_i2c_sender|divider\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \controller|Inst_i2c_sender|data_sr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \controller|Inst_i2c_sender|busy_sr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \controller|Inst_ov7670_registers|address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \OV7670_D~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode924w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode884w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_vga|vga_green\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Inst_vga|vCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Inst_vga|jMax\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Inst_vga|iMax\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Inst_vga|address\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_btn~combout\ : std_logic;
SIGNAL \controller|Inst_i2c_sender|ALT_INV_data_sr\ : std_logic_vector(31 DOWNTO 31);
SIGNAL \controller|Inst_i2c_sender|ALT_INV_busy_sr\ : std_logic_vector(31 DOWNTO 31);

BEGIN

ww_clk50 <= clk50;
OV7670_SIOC <= ww_OV7670_SIOC;
OV7670_RESET <= ww_OV7670_RESET;
OV7670_PWDN <= ww_OV7670_PWDN;
ww_OV7670_VSYNC <= OV7670_VSYNC;
ww_OV7670_HREF <= OV7670_HREF;
ww_OV7670_PCLK <= OV7670_PCLK;
OV7670_XCLK <= ww_OV7670_XCLK;
ww_OV7670_D <= OV7670_D;
LED <= ww_LED;
vga_red <= ww_vga_red;
vga_green <= ww_vga_green;
vga_blue <= ww_vga_blue;
vga_hsync <= ww_vga_hsync;
vga_vsync <= ww_vga_vsync;
ww_btn <= btn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\controller|Inst_ov7670_registers|address\(7) & \controller|Inst_ov7670_registers|address\(6) & \controller|Inst_ov7670_registers|address\(5) & 
\controller|Inst_ov7670_registers|address\(4) & \controller|Inst_ov7670_registers|address\(3) & \controller|Inst_ov7670_registers|address\(2) & \controller|Inst_ov7670_registers|address\(1) & \controller|Inst_ov7670_registers|address\(0));

\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a1\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a2\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a3\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a4\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a5\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a6\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a7\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a8\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a9\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a10\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a11\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a12\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a13\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a14\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a15\ <= \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTBDATAIN_bus\(0) <= \capture|dout\(5);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTBDATAIN_bus\(0) <= \capture|dout\(5);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTBDATAIN_bus\(0) <= \capture|dout\(5);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTBDATAIN_bus\(0) <= \capture|dout\(5);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTBDATAIN_bus\(0) <= \capture|dout\(5);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTBDATAIN_bus\(0) <= \capture|dout\(5);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTBDATAIN_bus\(0) <= \capture|dout\(5);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTBDATAIN_bus\(0) <= \capture|dout\(5);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTBDATAIN_bus\(0) <= \capture|dout\(6);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTBDATAIN_bus\(0) <= \capture|dout\(6);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTBDATAIN_bus\(0) <= \capture|dout\(6);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTBDATAIN_bus\(0) <= \capture|dout\(6);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTBDATAIN_bus\(0) <= \capture|dout\(6);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTBDATAIN_bus\(0) <= \capture|dout\(6);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTBDATAIN_bus\(0) <= \capture|dout\(6);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTBDATAIN_bus\(0) <= \capture|dout\(6);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTBDATAIN_bus\(0) <= \capture|dout\(7);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTBDATAIN_bus\(0) <= \capture|dout\(7);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTBDATAIN_bus\(0) <= \capture|dout\(7);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTBDATAIN_bus\(0) <= \capture|dout\(7);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTBDATAIN_bus\(0) <= \capture|dout\(7);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTBDATAIN_bus\(0) <= \capture|dout\(7);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTBDATAIN_bus\(0) <= \capture|dout\(7);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTBDATAIN_bus\(0) <= \capture|dout\(7);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTBDATAIN_bus\(0) <= \capture|dout\(2);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTBDATAIN_bus\(0) <= \capture|dout\(2);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTBDATAIN_bus\(0) <= \capture|dout\(2);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTBDATAIN_bus\(0) <= \capture|dout\(2);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTBDATAIN_bus\(0) <= \capture|dout\(2);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTBDATAIN_bus\(0) <= \capture|dout\(2);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\(0) <= \capture|dout\(2);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTBDATAIN_bus\(0) <= \capture|dout\(2);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTBDATAIN_bus\(0) <= \capture|dout\(3);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTBDATAIN_bus\(0) <= \capture|dout\(3);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTBDATAIN_bus\(0) <= \capture|dout\(3);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTBDATAIN_bus\(0) <= \capture|dout\(3);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTBDATAIN_bus\(0) <= \capture|dout\(3);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTBDATAIN_bus\(0) <= \capture|dout\(3);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTBDATAIN_bus\(0) <= \capture|dout\(3);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTBDATAIN_bus\(0) <= \capture|dout\(3);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTBDATAIN_bus\(0) <= \capture|dout\(4);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTBDATAIN_bus\(0) <= \capture|dout\(4);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTBDATAIN_bus\(0) <= \capture|dout\(4);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTBDATAIN_bus\(0) <= \capture|dout\(4);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTBDATAIN_bus\(0) <= \capture|dout\(4);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTBDATAIN_bus\(0) <= \capture|dout\(4);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\(0) <= \capture|dout\(4);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTBDATAIN_bus\(0) <= \capture|dout\(4);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTBDATAIN_bus\(0) <= \capture|dout\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTBDATAIN_bus\(0) <= \capture|dout\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTBDATAIN_bus\(0) <= \capture|dout\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTBDATAIN_bus\(0) <= \capture|dout\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTBDATAIN_bus\(0) <= \capture|dout\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTBDATAIN_bus\(0) <= \capture|dout\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\(0) <= \capture|dout\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTBDATAIN_bus\(0) <= \capture|dout\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTBDATAIN_bus\(0) <= \capture|dout\(1);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTBDATAIN_bus\(0) <= \capture|dout\(1);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTBDATAIN_bus\(0) <= \capture|dout\(1);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTBDATAIN_bus\(0) <= \capture|dout\(1);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\(0) <= \capture|dout\(1);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTBDATAIN_bus\(0) <= \capture|dout\(1);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\(0) <= \capture|dout\(1);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\(0);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTADATAIN_bus\(0) <= vcc;

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTBDATAIN_bus\(0) <= \capture|dout\(1);

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTAADDR_bus\ <= (\Inst_vga|address\(13) & \Inst_vga|address\(12) & \Inst_vga|address\(11) & \Inst_vga|address\(10) & \Inst_vga|address\(9) & \Inst_vga|address\(8) & 
\Inst_vga|address\(7) & \Inst_vga|address\(6) & \Inst_vga|address\(5) & \Inst_vga|address\(4) & \Inst_vga|address\(3) & \Inst_vga|address\(2));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTBADDR_bus\ <= (\capture|address\(11) & \capture|address\(10) & \capture|address\(9) & \capture|address\(8) & \capture|address\(7) & \capture|address\(6) & 
\capture|address\(5) & \capture|address\(4) & \capture|address\(3) & \capture|address\(2) & \capture|address\(1) & \capture|address\(0));

\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25~portadataout\ <= \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTADATAOUT_bus\(0);

\clk50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk50~combout\);

\OV7670_PCLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \OV7670_PCLK~combout\);
\ALT_INV_btn~combout\ <= NOT \btn~combout\;
\controller|Inst_i2c_sender|ALT_INV_data_sr\(31) <= NOT \controller|Inst_i2c_sender|data_sr\(31);
\controller|Inst_i2c_sender|ALT_INV_busy_sr\(31) <= NOT \controller|Inst_i2c_sender|busy_sr\(31);

-- Location: M4K_X52_Y18
\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7C8295509950F151BE51B65C08516051EF9C764CCA4A924A0A5182802B00008000007C81791EB1123E1F561C5A16921F1C1114101816E0196FE5A7EACBE783E08DE045E00A840458FCE884EAC8E5C0E50C0DE58C098254C401828E80031205C0802987C20302048008801480148",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ProjetoNaVGA.ov7670_top0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ov7670_controller:controller|ov7670_registers:Inst_ov7670_registers|altsyncram:Mux0_rtl_0|altsyncram_f501:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk50~clkctrl_outclk\,
	portaaddr => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y15_N20
\Inst_vga|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add2~4_combout\ = (\Inst_vga|iMax\(5) & (\Inst_vga|Add2~3\ $ (GND))) # (!\Inst_vga|iMax\(5) & (!\Inst_vga|Add2~3\ & VCC))
-- \Inst_vga|Add2~5\ = CARRY((\Inst_vga|iMax\(5) & !\Inst_vga|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(5),
	datad => VCC,
	cin => \Inst_vga|Add2~3\,
	combout => \Inst_vga|Add2~4_combout\,
	cout => \Inst_vga|Add2~5\);

-- Location: LCCOMB_X43_Y15_N6
\Inst_vga|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add3~0_combout\ = \Inst_vga|iMin\(3) $ (GND)
-- \Inst_vga|Add3~1\ = CARRY(!\Inst_vga|iMin\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|iMin\(3),
	datad => VCC,
	combout => \Inst_vga|Add3~0_combout\,
	cout => \Inst_vga|Add3~1\);

-- Location: LCCOMB_X43_Y15_N16
\Inst_vga|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add3~10_combout\ = (\Inst_vga|iMin\(8) & (!\Inst_vga|Add3~9\)) # (!\Inst_vga|iMin\(8) & (\Inst_vga|Add3~9\ & VCC))
-- \Inst_vga|Add3~11\ = CARRY((\Inst_vga|iMin\(8) & !\Inst_vga|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|iMin\(8),
	datad => VCC,
	cin => \Inst_vga|Add3~9\,
	combout => \Inst_vga|Add3~10_combout\,
	cout => \Inst_vga|Add3~11\);

-- Location: M4K_X52_Y26
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode914w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode914w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode914w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y20
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode904w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y22
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode874w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode874w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode874w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y10
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode884w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode884w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode884w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21_PORTADATAOUT_bus\);

-- Location: LCCOMB_X41_Y13_N12
\Inst_vga|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add4~0_combout\ = \Inst_vga|jMin\(3) $ (GND)
-- \Inst_vga|Add4~1\ = CARRY(!\Inst_vga|jMin\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMin\(3),
	datad => VCC,
	combout => \Inst_vga|Add4~0_combout\,
	cout => \Inst_vga|Add4~1\);

-- Location: LCCOMB_X41_Y13_N16
\Inst_vga|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add4~4_combout\ = (\Inst_vga|jMin\(5) & (\Inst_vga|Add4~3\ $ (GND))) # (!\Inst_vga|jMin\(5) & ((GND) # (!\Inst_vga|Add4~3\)))
-- \Inst_vga|Add4~5\ = CARRY((!\Inst_vga|Add4~3\) # (!\Inst_vga|jMin\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|jMin\(5),
	datad => VCC,
	cin => \Inst_vga|Add4~3\,
	combout => \Inst_vga|Add4~4_combout\,
	cout => \Inst_vga|Add4~5\);

-- Location: LCCOMB_X41_Y14_N14
\Inst_vga|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add5~10_combout\ = (\Inst_vga|jMax\(8) & (!\Inst_vga|Add5~9\)) # (!\Inst_vga|jMax\(8) & ((\Inst_vga|Add5~9\) # (GND)))
-- \Inst_vga|Add5~11\ = CARRY((!\Inst_vga|Add5~9\) # (!\Inst_vga|jMax\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|jMax\(8),
	datad => VCC,
	cin => \Inst_vga|Add5~9\,
	combout => \Inst_vga|Add5~10_combout\,
	cout => \Inst_vga|Add5~11\);

-- Location: LCCOMB_X41_Y14_N16
\Inst_vga|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add5~12_combout\ = (\Inst_vga|jMax\(9) & (\Inst_vga|Add5~11\ $ (GND))) # (!\Inst_vga|jMax\(9) & (!\Inst_vga|Add5~11\ & VCC))
-- \Inst_vga|Add5~13\ = CARRY((\Inst_vga|jMax\(9) & !\Inst_vga|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMax\(9),
	datad => VCC,
	cin => \Inst_vga|Add5~11\,
	combout => \Inst_vga|Add5~12_combout\,
	cout => \Inst_vga|Add5~13\);

-- Location: M4K_X52_Y12
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode874w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode874w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode874w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y25
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode914w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode914w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode914w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y29
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode934w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode934w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode934w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y27
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode874w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode874w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode874w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y26
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode857w\(3),
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y14
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode924w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode924w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode924w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y11
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode914w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode914w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode914w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y18
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode904w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y16
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode934w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode934w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode934w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y21
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode874w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode874w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode874w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y17
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode914w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode914w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode914w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y27
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode934w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode934w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode934w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y20
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode857w\(3),
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y24
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode894w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode894w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode894w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y32
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode904w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y29
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode934w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode934w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode934w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y26
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode857w\(3),
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y30
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode894w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode894w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode894w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25_PORTADATAOUT_bus\);

-- Location: LCCOMB_X56_Y18_N4
\controller|Inst_i2c_sender|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Add0~0_combout\ = \controller|Inst_i2c_sender|divider\(0) $ (GND)
-- \controller|Inst_i2c_sender|Add0~1\ = CARRY(!\controller|Inst_i2c_sender|divider\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|divider\(0),
	datad => VCC,
	combout => \controller|Inst_i2c_sender|Add0~0_combout\,
	cout => \controller|Inst_i2c_sender|Add0~1\);

-- Location: LCCOMB_X56_Y18_N12
\controller|Inst_i2c_sender|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Add0~8_combout\ = (\controller|Inst_i2c_sender|divider\(4) & (\controller|Inst_i2c_sender|Add0~7\ $ (GND))) # (!\controller|Inst_i2c_sender|divider\(4) & (!\controller|Inst_i2c_sender|Add0~7\ & VCC))
-- \controller|Inst_i2c_sender|Add0~9\ = CARRY((\controller|Inst_i2c_sender|divider\(4) & !\controller|Inst_i2c_sender|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|divider\(4),
	datad => VCC,
	cin => \controller|Inst_i2c_sender|Add0~7\,
	combout => \controller|Inst_i2c_sender|Add0~8_combout\,
	cout => \controller|Inst_i2c_sender|Add0~9\);

-- Location: LCFF_X53_Y18_N1
\controller|Inst_i2c_sender|taken\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr[0]~3_combout\,
	sclr => \controller|Inst_i2c_sender|busy_sr\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|taken~regout\);

-- Location: LCFF_X30_Y20_N13
\capture|we\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|we~0_combout\,
	sclr => \OV7670_VSYNC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|we~regout\);

-- Location: LCCOMB_X42_Y14_N22
\Inst_vga|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add1~16_combout\ = (\Inst_vga|hCounter\(9) & (\Inst_vga|Add1~15\ $ (GND))) # (!\Inst_vga|hCounter\(9) & (!\Inst_vga|Add1~15\ & VCC))
-- \Inst_vga|Add1~17\ = CARRY((\Inst_vga|hCounter\(9) & !\Inst_vga|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|hCounter\(9),
	datad => VCC,
	cin => \Inst_vga|Add1~15\,
	combout => \Inst_vga|Add1~16_combout\,
	cout => \Inst_vga|Add1~17\);

-- Location: LCCOMB_X42_Y14_N24
\Inst_vga|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add1~18_combout\ = \Inst_vga|hCounter\(10) $ (\Inst_vga|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|hCounter\(10),
	cin => \Inst_vga|Add1~17\,
	combout => \Inst_vga|Add1~18_combout\);

-- Location: LCFF_X50_Y20_N13
\btn_debounce|c[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[2]~28_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(2));

-- Location: LCFF_X50_Y20_N17
\btn_debounce|c[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[4]~32_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(4));

-- Location: LCFF_X50_Y20_N21
\btn_debounce|c[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[6]~36_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(6));

-- Location: LCFF_X50_Y19_N7
\btn_debounce|c[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[15]~54_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(15));

-- Location: LCFF_X50_Y19_N13
\btn_debounce|c[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[18]~60_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(18));

-- Location: LCFF_X50_Y19_N21
\btn_debounce|c[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[22]~68_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(22));

-- Location: LCCOMB_X50_Y20_N12
\btn_debounce|c[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[2]~28_combout\ = (\btn_debounce|c\(2) & (\btn_debounce|c[1]~27\ $ (GND))) # (!\btn_debounce|c\(2) & (!\btn_debounce|c[1]~27\ & VCC))
-- \btn_debounce|c[2]~29\ = CARRY((\btn_debounce|c\(2) & !\btn_debounce|c[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(2),
	datad => VCC,
	cin => \btn_debounce|c[1]~27\,
	combout => \btn_debounce|c[2]~28_combout\,
	cout => \btn_debounce|c[2]~29\);

-- Location: LCCOMB_X50_Y20_N16
\btn_debounce|c[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[4]~32_combout\ = (\btn_debounce|c\(4) & (\btn_debounce|c[3]~31\ $ (GND))) # (!\btn_debounce|c\(4) & (!\btn_debounce|c[3]~31\ & VCC))
-- \btn_debounce|c[4]~33\ = CARRY((\btn_debounce|c\(4) & !\btn_debounce|c[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(4),
	datad => VCC,
	cin => \btn_debounce|c[3]~31\,
	combout => \btn_debounce|c[4]~32_combout\,
	cout => \btn_debounce|c[4]~33\);

-- Location: LCCOMB_X50_Y20_N20
\btn_debounce|c[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[6]~36_combout\ = (\btn_debounce|c\(6) & (\btn_debounce|c[5]~35\ $ (GND))) # (!\btn_debounce|c\(6) & (!\btn_debounce|c[5]~35\ & VCC))
-- \btn_debounce|c[6]~37\ = CARRY((\btn_debounce|c\(6) & !\btn_debounce|c[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(6),
	datad => VCC,
	cin => \btn_debounce|c[5]~35\,
	combout => \btn_debounce|c[6]~36_combout\,
	cout => \btn_debounce|c[6]~37\);

-- Location: LCCOMB_X50_Y19_N6
\btn_debounce|c[15]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[15]~54_combout\ = (\btn_debounce|c\(15) & (!\btn_debounce|c[14]~53\)) # (!\btn_debounce|c\(15) & ((\btn_debounce|c[14]~53\) # (GND)))
-- \btn_debounce|c[15]~55\ = CARRY((!\btn_debounce|c[14]~53\) # (!\btn_debounce|c\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(15),
	datad => VCC,
	cin => \btn_debounce|c[14]~53\,
	combout => \btn_debounce|c[15]~54_combout\,
	cout => \btn_debounce|c[15]~55\);

-- Location: LCCOMB_X50_Y19_N12
\btn_debounce|c[18]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[18]~60_combout\ = (\btn_debounce|c\(18) & (\btn_debounce|c[17]~59\ $ (GND))) # (!\btn_debounce|c\(18) & (!\btn_debounce|c[17]~59\ & VCC))
-- \btn_debounce|c[18]~61\ = CARRY((\btn_debounce|c\(18) & !\btn_debounce|c[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(18),
	datad => VCC,
	cin => \btn_debounce|c[17]~59\,
	combout => \btn_debounce|c[18]~60_combout\,
	cout => \btn_debounce|c[18]~61\);

-- Location: LCCOMB_X50_Y19_N20
\btn_debounce|c[22]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[22]~68_combout\ = (\btn_debounce|c\(22) & (\btn_debounce|c[21]~67\ $ (GND))) # (!\btn_debounce|c\(22) & (!\btn_debounce|c[21]~67\ & VCC))
-- \btn_debounce|c[22]~69\ = CARRY((\btn_debounce|c\(22) & !\btn_debounce|c[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(22),
	datad => VCC,
	cin => \btn_debounce|c[21]~67\,
	combout => \btn_debounce|c[22]~68_combout\,
	cout => \btn_debounce|c[22]~69\);

-- Location: LCCOMB_X53_Y18_N10
\controller|Inst_ov7670_registers|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_ov7670_registers|Equal0~0_combout\ = (\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a1\ & 
-- (\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a2\ & \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a1\,
	datac => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a2\,
	datad => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a3\,
	combout => \controller|Inst_ov7670_registers|Equal0~0_combout\);

-- Location: LCFF_X55_Y18_N7
\controller|Inst_i2c_sender|busy_sr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~2_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(2));

-- Location: LCFF_X55_Y18_N11
\controller|Inst_i2c_sender|busy_sr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~5_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(1));

-- Location: LCCOMB_X55_Y18_N14
\controller|Inst_i2c_sender|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Mux2~2_combout\ = (\controller|Inst_i2c_sender|busy_sr\(2) & (((!\controller|Inst_i2c_sender|busy_sr\(29)) # (!\controller|Inst_i2c_sender|Mux2~1_combout\)) # (!\controller|Inst_i2c_sender|Mux2~0_combout\))) # 
-- (!\controller|Inst_i2c_sender|busy_sr\(2) & ((\controller|Inst_i2c_sender|Mux2~0_combout\) # ((\controller|Inst_i2c_sender|busy_sr\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(2),
	datab => \controller|Inst_i2c_sender|Mux2~0_combout\,
	datac => \controller|Inst_i2c_sender|Mux2~1_combout\,
	datad => \controller|Inst_i2c_sender|busy_sr\(29),
	combout => \controller|Inst_i2c_sender|Mux2~2_combout\);

-- Location: LCFF_X45_Y15_N11
\Inst_vga|iMax[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|vCounter\(8),
	sload => VCC,
	ena => \Inst_vga|iMax[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMax\(8));

-- Location: LCFF_X43_Y15_N9
\Inst_vga|iMin[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|iMin[6]~6_combout\,
	sload => VCC,
	ena => \Inst_vga|iMin[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMin\(6));

-- Location: LCFF_X43_Y15_N11
\Inst_vga|iMin[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|iMin[4]~8_combout\,
	sload => VCC,
	ena => \Inst_vga|iMin[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMin\(4));

-- Location: LCCOMB_X43_Y15_N4
\Inst_vga|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal6~0_combout\ = (\Inst_vga|vCounter\(8) & (\Inst_vga|Add3~10_combout\ & (\Inst_vga|vCounter\(9) $ (!\Inst_vga|Add3~12_combout\)))) # (!\Inst_vga|vCounter\(8) & (!\Inst_vga|Add3~10_combout\ & (\Inst_vga|vCounter\(9) $ 
-- (!\Inst_vga|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(8),
	datab => \Inst_vga|vCounter\(9),
	datac => \Inst_vga|Add3~10_combout\,
	datad => \Inst_vga|Add3~12_combout\,
	combout => \Inst_vga|Equal6~0_combout\);

-- Location: LCCOMB_X43_Y15_N24
\Inst_vga|Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal6~2_combout\ = (\Inst_vga|Add3~0_combout\ & (\Inst_vga|vCounter\(3) & (\Inst_vga|iMin\(2) $ (\Inst_vga|vCounter\(2))))) # (!\Inst_vga|Add3~0_combout\ & (!\Inst_vga|vCounter\(3) & (\Inst_vga|iMin\(2) $ (\Inst_vga|vCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add3~0_combout\,
	datab => \Inst_vga|iMin\(2),
	datac => \Inst_vga|vCounter\(2),
	datad => \Inst_vga|vCounter\(3),
	combout => \Inst_vga|Equal6~2_combout\);

-- Location: LCCOMB_X45_Y15_N12
\Inst_vga|Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal5~2_combout\ = (\Inst_vga|Add2~0_combout\ & (\Inst_vga|vCounter\(3) & (\Inst_vga|iMax\(2) $ (!\Inst_vga|vCounter\(2))))) # (!\Inst_vga|Add2~0_combout\ & (!\Inst_vga|vCounter\(3) & (\Inst_vga|iMax\(2) $ (!\Inst_vga|vCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add2~0_combout\,
	datab => \Inst_vga|iMax\(2),
	datac => \Inst_vga|vCounter\(3),
	datad => \Inst_vga|vCounter\(2),
	combout => \Inst_vga|Equal5~2_combout\);

-- Location: LCCOMB_X47_Y15_N4
\Inst_vga|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal1~0_combout\ = (!\Inst_vga|vCounter\(2) & (\Inst_vga|vCounter\(5) & (\Inst_vga|vCounter\(1) & !\Inst_vga|vCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(2),
	datab => \Inst_vga|vCounter\(5),
	datac => \Inst_vga|vCounter\(1),
	datad => \Inst_vga|vCounter\(3),
	combout => \Inst_vga|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y15_N6
\Inst_vga|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal2~0_combout\ = (\Inst_vga|Equal1~0_combout\ & (\Inst_vga|vCounter\(9) & (!\Inst_vga|vCounter\(0) & \Inst_vga|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal1~0_combout\,
	datab => \Inst_vga|vCounter\(9),
	datac => \Inst_vga|vCounter\(0),
	datad => \Inst_vga|process_0~1_combout\,
	combout => \Inst_vga|Equal2~0_combout\);

-- Location: LCCOMB_X40_Y19_N16
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~0_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1)) # 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45~portadataout\)))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37~portadataout\ & 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a37~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a45~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~0_combout\);

-- Location: LCFF_X41_Y13_N11
\Inst_vga|jMin[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|jMin[2]~9_combout\,
	ena => \Inst_vga|jMin[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMin\(2));

-- Location: LCFF_X42_Y13_N5
\Inst_vga|jMin[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|jMin[0]~11_combout\,
	ena => \Inst_vga|jMin[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMin\(0));

-- Location: LCFF_X41_Y14_N17
\Inst_vga|jMax[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|hCounter\(9),
	sload => VCC,
	ena => \Inst_vga|jMax[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMax\(9));

-- Location: LCFF_X41_Y14_N13
\Inst_vga|jMax[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|hCounter\(7),
	sload => VCC,
	ena => \Inst_vga|jMax[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMax\(7));

-- Location: LCFF_X41_Y14_N11
\Inst_vga|jMax[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|hCounter\(6),
	sload => VCC,
	ena => \Inst_vga|jMax[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMax\(6));

-- Location: LCFF_X41_Y14_N7
\Inst_vga|jMax[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|hCounter\(4),
	sload => VCC,
	ena => \Inst_vga|jMax[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMax\(4));

-- Location: LCCOMB_X41_Y14_N24
\Inst_vga|vga_green[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~2_combout\ = (\Inst_vga|Add5~10_combout\ & (\Inst_vga|hCounter\(8) & (\Inst_vga|hCounter\(9) $ (!\Inst_vga|Add5~12_combout\)))) # (!\Inst_vga|Add5~10_combout\ & (!\Inst_vga|hCounter\(8) & (\Inst_vga|hCounter\(9) $ 
-- (!\Inst_vga|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add5~10_combout\,
	datab => \Inst_vga|hCounter\(8),
	datac => \Inst_vga|hCounter\(9),
	datad => \Inst_vga|Add5~12_combout\,
	combout => \Inst_vga|vga_green[0]~2_combout\);

-- Location: LCCOMB_X41_Y13_N8
\Inst_vga|vga_green[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~7_combout\ = (\Inst_vga|hCounter\(5) & (\Inst_vga|Add4~4_combout\ & (\Inst_vga|hCounter\(4) $ (!\Inst_vga|Add4~2_combout\)))) # (!\Inst_vga|hCounter\(5) & (!\Inst_vga|Add4~4_combout\ & (\Inst_vga|hCounter\(4) $ 
-- (!\Inst_vga|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(5),
	datab => \Inst_vga|Add4~4_combout\,
	datac => \Inst_vga|hCounter\(4),
	datad => \Inst_vga|Add4~2_combout\,
	combout => \Inst_vga|vga_green[0]~7_combout\);

-- Location: LCCOMB_X41_Y13_N6
\Inst_vga|vga_green[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~11_combout\ = (\Inst_vga|jMin\(2) & (!\Inst_vga|hCounter\(2) & (\Inst_vga|hCounter\(3) $ (!\Inst_vga|Add4~0_combout\)))) # (!\Inst_vga|jMin\(2) & (\Inst_vga|hCounter\(2) & (\Inst_vga|hCounter\(3) $ (!\Inst_vga|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMin\(2),
	datab => \Inst_vga|hCounter\(3),
	datac => \Inst_vga|Add4~0_combout\,
	datad => \Inst_vga|hCounter\(2),
	combout => \Inst_vga|vga_green[0]~11_combout\);

-- Location: LCCOMB_X40_Y15_N28
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~18_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43~portadataout\)) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a43~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a35~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~18_combout\);

-- Location: LCCOMB_X40_Y15_N16
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~19_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~18_combout\ & 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59~portadataout\)) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~18_combout\ & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51~portadataout\))))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a59~portadataout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a51~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~18_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~19_combout\);

-- Location: LCFF_X56_Y18_N13
\controller|Inst_i2c_sender|divider[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|Add0~8_combout\,
	ena => \controller|Inst_i2c_sender|divider[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|divider\(4));

-- Location: LCCOMB_X55_Y18_N6
\controller|Inst_i2c_sender|busy_sr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~2_combout\ = (\controller|Inst_i2c_sender|busy_sr\(1)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|busy_sr\(1),
	combout => \controller|Inst_i2c_sender|busy_sr~2_combout\);

-- Location: LCCOMB_X56_Y18_N28
\controller|Inst_i2c_sender|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Equal4~1_combout\ = (((!\controller|Inst_i2c_sender|divider\(4)) # (!\controller|Inst_i2c_sender|divider\(5))) # (!\controller|Inst_i2c_sender|divider\(7))) # (!\controller|Inst_i2c_sender|divider\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|divider\(6),
	datab => \controller|Inst_i2c_sender|divider\(7),
	datac => \controller|Inst_i2c_sender|divider\(5),
	datad => \controller|Inst_i2c_sender|divider\(4),
	combout => \controller|Inst_i2c_sender|Equal4~1_combout\);

-- Location: LCCOMB_X56_Y18_N22
\controller|Inst_i2c_sender|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Equal4~2_combout\ = (\controller|Inst_i2c_sender|Equal4~1_combout\) # (\controller|Inst_i2c_sender|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|Equal4~1_combout\,
	datad => \controller|Inst_i2c_sender|Equal4~0_combout\,
	combout => \controller|Inst_i2c_sender|Equal4~2_combout\);

-- Location: LCCOMB_X55_Y18_N10
\controller|Inst_i2c_sender|busy_sr~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~5_combout\ = (\controller|Inst_i2c_sender|busy_sr\(0)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(0),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~5_combout\);

-- Location: LCFF_X50_Y18_N13
\controller|Inst_i2c_sender|busy_sr[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~12_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(10));

-- Location: LCCOMB_X50_Y20_N6
\btn_debounce|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|Equal0~1_combout\ = (\btn_debounce|c\(6) & (\btn_debounce|c\(7) & (\btn_debounce|c\(4) & \btn_debounce|c\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(6),
	datab => \btn_debounce|c\(7),
	datac => \btn_debounce|c\(4),
	datad => \btn_debounce|c\(5),
	combout => \btn_debounce|Equal0~1_combout\);

-- Location: LCFF_X32_Y20_N25
\capture|href_last\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|href_last~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|href_last~regout\);

-- Location: LCCOMB_X30_Y20_N12
\capture|we~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|we~0_combout\ = (\capture|cnt\(0) & (!\capture|process_0~0_combout\ & !\capture|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|cnt\(0),
	datac => \capture|process_0~0_combout\,
	datad => \capture|cnt\(1),
	combout => \capture|we~0_combout\);

-- Location: LCFF_X53_Y18_N25
\controller|Inst_i2c_sender|busy_sr[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~15_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(9));

-- Location: LCCOMB_X50_Y18_N12
\controller|Inst_i2c_sender|busy_sr~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~12_combout\ = (\controller|Inst_i2c_sender|busy_sr\(9)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|busy_sr\(9),
	combout => \controller|Inst_i2c_sender|busy_sr~12_combout\);

-- Location: LCFF_X53_Y18_N23
\controller|Inst_i2c_sender|busy_sr[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~18_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(8));

-- Location: LCCOMB_X53_Y18_N24
\controller|Inst_i2c_sender|busy_sr~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~15_combout\ = (\controller|Inst_i2c_sender|busy_sr\(8)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(8),
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~15_combout\);

-- Location: LCFF_X53_Y18_N5
\controller|Inst_i2c_sender|busy_sr[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~21_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(7));

-- Location: LCCOMB_X53_Y18_N22
\controller|Inst_i2c_sender|busy_sr~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~18_combout\ = (\controller|Inst_i2c_sender|busy_sr\(7)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(31),
	datac => \controller|Inst_i2c_sender|busy_sr\(7),
	combout => \controller|Inst_i2c_sender|busy_sr~18_combout\);

-- Location: LCFF_X50_Y18_N7
\controller|Inst_i2c_sender|busy_sr[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~22_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(16));

-- Location: LCFF_X53_Y18_N19
\controller|Inst_i2c_sender|busy_sr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~24_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(6));

-- Location: LCCOMB_X53_Y18_N4
\controller|Inst_i2c_sender|busy_sr~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~21_combout\ = (\controller|Inst_i2c_sender|busy_sr\(6)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(6),
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~21_combout\);

-- Location: LCFF_X50_Y18_N5
\controller|Inst_i2c_sender|busy_sr[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~25_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(15));

-- Location: LCCOMB_X50_Y18_N6
\controller|Inst_i2c_sender|busy_sr~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~22_combout\ = (\controller|Inst_i2c_sender|busy_sr\(15)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(15),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~22_combout\);

-- Location: LCFF_X53_Y18_N21
\controller|Inst_i2c_sender|busy_sr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~27_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(5));

-- Location: LCCOMB_X53_Y18_N18
\controller|Inst_i2c_sender|busy_sr~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~24_combout\ = (\controller|Inst_i2c_sender|busy_sr\(5)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(31),
	datac => \controller|Inst_i2c_sender|busy_sr\(5),
	combout => \controller|Inst_i2c_sender|busy_sr~24_combout\);

-- Location: LCFF_X50_Y18_N9
\controller|Inst_i2c_sender|busy_sr[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~28_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(14));

-- Location: LCCOMB_X50_Y18_N4
\controller|Inst_i2c_sender|busy_sr~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~25_combout\ = (\controller|Inst_i2c_sender|busy_sr\(14)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(14),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~25_combout\);

-- Location: LCFF_X54_Y18_N25
\controller|Inst_i2c_sender|busy_sr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~30_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(4));

-- Location: LCCOMB_X53_Y18_N20
\controller|Inst_i2c_sender|busy_sr~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~27_combout\ = (\controller|Inst_i2c_sender|busy_sr\(4)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|busy_sr\(4),
	combout => \controller|Inst_i2c_sender|busy_sr~27_combout\);

-- Location: LCFF_X50_Y18_N21
\controller|Inst_i2c_sender|busy_sr[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~31_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(13));

-- Location: LCCOMB_X50_Y18_N8
\controller|Inst_i2c_sender|busy_sr~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~28_combout\ = (\controller|Inst_i2c_sender|busy_sr\(13)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(13),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~28_combout\);

-- Location: LCFF_X55_Y18_N31
\controller|Inst_i2c_sender|busy_sr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~33_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(3));

-- Location: LCCOMB_X54_Y18_N24
\controller|Inst_i2c_sender|busy_sr~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~30_combout\ = (\controller|Inst_i2c_sender|busy_sr\(3)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|busy_sr\(3),
	combout => \controller|Inst_i2c_sender|busy_sr~30_combout\);

-- Location: LCFF_X50_Y18_N29
\controller|Inst_i2c_sender|busy_sr[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~34_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(12));

-- Location: LCCOMB_X50_Y18_N20
\controller|Inst_i2c_sender|busy_sr~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~31_combout\ = (\controller|Inst_i2c_sender|busy_sr\(12)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(12),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~31_combout\);

-- Location: LCCOMB_X55_Y18_N30
\controller|Inst_i2c_sender|busy_sr~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~33_combout\ = (\controller|Inst_i2c_sender|busy_sr\(2)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|busy_sr\(2),
	combout => \controller|Inst_i2c_sender|busy_sr~33_combout\);

-- Location: LCCOMB_X50_Y18_N28
\controller|Inst_i2c_sender|busy_sr~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~34_combout\ = (\controller|Inst_i2c_sender|busy_sr\(11)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(11),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~34_combout\);

-- Location: LCFF_X51_Y18_N11
\controller|Inst_i2c_sender|data_sr[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~18_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(13));

-- Location: LCFF_X51_Y18_N1
\controller|Inst_i2c_sender|data_sr[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~19_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(12));

-- Location: LCCOMB_X51_Y18_N10
\controller|Inst_i2c_sender|data_sr~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~18_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & ((\controller|Inst_i2c_sender|data_sr\(12)))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- (!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datab => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a6\,
	datad => \controller|Inst_i2c_sender|data_sr\(12),
	combout => \controller|Inst_i2c_sender|data_sr~18_combout\);

-- Location: LCFF_X51_Y18_N31
\controller|Inst_i2c_sender|data_sr[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~20_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(11));

-- Location: LCCOMB_X51_Y18_N0
\controller|Inst_i2c_sender|data_sr~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~19_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & ((\controller|Inst_i2c_sender|data_sr\(11)))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- (!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a7\,
	datab => \controller|Inst_i2c_sender|data_sr\(11),
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|data_sr~19_combout\);

-- Location: LCFF_X51_Y18_N29
\controller|Inst_i2c_sender|data_sr[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~21_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(10));

-- Location: LCCOMB_X51_Y18_N30
\controller|Inst_i2c_sender|data_sr~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~20_combout\ = (\controller|Inst_i2c_sender|data_sr\(10)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|data_sr\(10),
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|data_sr~20_combout\);

-- Location: LCFF_X51_Y18_N23
\controller|Inst_i2c_sender|data_sr[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~22_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(9));

-- Location: LCCOMB_X51_Y18_N28
\controller|Inst_i2c_sender|data_sr~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~21_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & ((\controller|Inst_i2c_sender|data_sr\(9)))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- (!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datac => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a8\,
	datad => \controller|Inst_i2c_sender|data_sr\(9),
	combout => \controller|Inst_i2c_sender|data_sr~21_combout\);

-- Location: LCFF_X51_Y18_N13
\controller|Inst_i2c_sender|data_sr[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~23_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(8));

-- Location: LCCOMB_X51_Y18_N22
\controller|Inst_i2c_sender|data_sr~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~22_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & ((\controller|Inst_i2c_sender|data_sr\(8)))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- (!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datac => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a9\,
	datad => \controller|Inst_i2c_sender|data_sr\(8),
	combout => \controller|Inst_i2c_sender|data_sr~22_combout\);

-- Location: LCFF_X51_Y18_N27
\controller|Inst_i2c_sender|data_sr[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~24_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(7));

-- Location: LCCOMB_X51_Y18_N12
\controller|Inst_i2c_sender|data_sr~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~23_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & (\controller|Inst_i2c_sender|data_sr\(7))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- ((!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|data_sr\(7),
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a10\,
	combout => \controller|Inst_i2c_sender|data_sr~23_combout\);

-- Location: LCFF_X51_Y18_N25
\controller|Inst_i2c_sender|data_sr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~25_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(6));

-- Location: LCCOMB_X51_Y18_N26
\controller|Inst_i2c_sender|data_sr~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~24_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & (\controller|Inst_i2c_sender|data_sr\(6))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- ((!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|data_sr\(6),
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a11\,
	combout => \controller|Inst_i2c_sender|data_sr~24_combout\);

-- Location: LCFF_X51_Y18_N19
\controller|Inst_i2c_sender|data_sr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~26_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(5));

-- Location: LCCOMB_X51_Y18_N24
\controller|Inst_i2c_sender|data_sr~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~25_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & (\controller|Inst_i2c_sender|data_sr\(5))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- ((!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datab => \controller|Inst_i2c_sender|data_sr\(5),
	datad => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a12\,
	combout => \controller|Inst_i2c_sender|data_sr~25_combout\);

-- Location: LCFF_X51_Y18_N5
\controller|Inst_i2c_sender|data_sr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~27_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(4));

-- Location: LCCOMB_X51_Y18_N18
\controller|Inst_i2c_sender|data_sr~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~26_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & (\controller|Inst_i2c_sender|data_sr\(4))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- ((!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datab => \controller|Inst_i2c_sender|data_sr\(4),
	datad => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a13\,
	combout => \controller|Inst_i2c_sender|data_sr~26_combout\);

-- Location: LCFF_X51_Y18_N3
\controller|Inst_i2c_sender|data_sr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~28_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(3));

-- Location: LCCOMB_X51_Y18_N4
\controller|Inst_i2c_sender|data_sr~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~27_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & ((\controller|Inst_i2c_sender|data_sr\(3)))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- (!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datab => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a14\,
	datad => \controller|Inst_i2c_sender|data_sr\(3),
	combout => \controller|Inst_i2c_sender|data_sr~27_combout\);

-- Location: LCFF_X51_Y18_N17
\controller|Inst_i2c_sender|data_sr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~29_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(2));

-- Location: LCCOMB_X51_Y18_N2
\controller|Inst_i2c_sender|data_sr~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~28_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & (\controller|Inst_i2c_sender|data_sr\(2))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- ((!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|data_sr\(2),
	datab => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a15\,
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|data_sr~28_combout\);

-- Location: LCFF_X51_Y18_N15
\controller|Inst_i2c_sender|data_sr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr[1]~60_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(1));

-- Location: LCCOMB_X51_Y18_N16
\controller|Inst_i2c_sender|data_sr~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~29_combout\ = (\controller|Inst_i2c_sender|data_sr\(1)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datac => \controller|Inst_i2c_sender|data_sr\(1),
	combout => \controller|Inst_i2c_sender|data_sr~29_combout\);

-- Location: LCCOMB_X44_Y15_N24
\Inst_vga|iMin[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|iMin[6]~6_combout\ = !\Inst_vga|vCounter\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga|vCounter\(6),
	combout => \Inst_vga|iMin[6]~6_combout\);

-- Location: LCCOMB_X44_Y15_N26
\Inst_vga|iMin[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|iMin[4]~8_combout\ = !\Inst_vga|vCounter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|vCounter\(4),
	combout => \Inst_vga|iMin[4]~8_combout\);

-- Location: LCCOMB_X41_Y13_N10
\Inst_vga|jMin[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|jMin[2]~9_combout\ = !\Inst_vga|hCounter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga|hCounter\(2),
	combout => \Inst_vga|jMin[2]~9_combout\);

-- Location: LCCOMB_X42_Y13_N4
\Inst_vga|jMin[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|jMin[0]~11_combout\ = !\controller|sys_clk~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|sys_clk~regout\,
	combout => \Inst_vga|jMin[0]~11_combout\);

-- Location: LCCOMB_X51_Y18_N14
\controller|Inst_i2c_sender|data_sr[1]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr[1]~60_combout\ = !\controller|Inst_i2c_sender|busy_sr\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|data_sr[1]~60_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OV7670_HREF~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OV7670_HREF,
	combout => \OV7670_HREF~combout\);

-- Location: LCCOMB_X32_Y20_N24
\capture|href_last~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|href_last~feeder_combout\ = \OV7670_HREF~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OV7670_HREF~combout\,
	combout => \capture|href_last~feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk50,
	combout => \clk50~combout\);

-- Location: CLKCTRL_G3
\clk50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50~clkctrl_outclk\);

-- Location: LCCOMB_X50_Y18_N24
\controller|Inst_i2c_sender|busy_sr~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~19_combout\ = (\controller|Inst_i2c_sender|busy_sr\(16)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(16),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~19_combout\);

-- Location: LCCOMB_X56_Y18_N6
\controller|Inst_i2c_sender|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Add0~2_combout\ = (\controller|Inst_i2c_sender|divider\(1) & (!\controller|Inst_i2c_sender|Add0~1\)) # (!\controller|Inst_i2c_sender|divider\(1) & ((\controller|Inst_i2c_sender|Add0~1\) # (GND)))
-- \controller|Inst_i2c_sender|Add0~3\ = CARRY((!\controller|Inst_i2c_sender|Add0~1\) # (!\controller|Inst_i2c_sender|divider\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|divider\(1),
	datad => VCC,
	cin => \controller|Inst_i2c_sender|Add0~1\,
	combout => \controller|Inst_i2c_sender|Add0~2_combout\,
	cout => \controller|Inst_i2c_sender|Add0~3\);

-- Location: LCCOMB_X56_Y18_N8
\controller|Inst_i2c_sender|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Add0~4_combout\ = (\controller|Inst_i2c_sender|divider\(2) & (\controller|Inst_i2c_sender|Add0~3\ $ (GND))) # (!\controller|Inst_i2c_sender|divider\(2) & (!\controller|Inst_i2c_sender|Add0~3\ & VCC))
-- \controller|Inst_i2c_sender|Add0~5\ = CARRY((\controller|Inst_i2c_sender|divider\(2) & !\controller|Inst_i2c_sender|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|divider\(2),
	datad => VCC,
	cin => \controller|Inst_i2c_sender|Add0~3\,
	combout => \controller|Inst_i2c_sender|Add0~4_combout\,
	cout => \controller|Inst_i2c_sender|Add0~5\);

-- Location: LCCOMB_X56_Y18_N10
\controller|Inst_i2c_sender|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Add0~6_combout\ = (\controller|Inst_i2c_sender|divider\(3) & (!\controller|Inst_i2c_sender|Add0~5\)) # (!\controller|Inst_i2c_sender|divider\(3) & ((\controller|Inst_i2c_sender|Add0~5\) # (GND)))
-- \controller|Inst_i2c_sender|Add0~7\ = CARRY((!\controller|Inst_i2c_sender|Add0~5\) # (!\controller|Inst_i2c_sender|divider\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|divider\(3),
	datad => VCC,
	cin => \controller|Inst_i2c_sender|Add0~5\,
	combout => \controller|Inst_i2c_sender|Add0~6_combout\,
	cout => \controller|Inst_i2c_sender|Add0~7\);

-- Location: LCCOMB_X56_Y18_N14
\controller|Inst_i2c_sender|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Add0~10_combout\ = (\controller|Inst_i2c_sender|divider\(5) & (!\controller|Inst_i2c_sender|Add0~9\)) # (!\controller|Inst_i2c_sender|divider\(5) & ((\controller|Inst_i2c_sender|Add0~9\) # (GND)))
-- \controller|Inst_i2c_sender|Add0~11\ = CARRY((!\controller|Inst_i2c_sender|Add0~9\) # (!\controller|Inst_i2c_sender|divider\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|divider\(5),
	datad => VCC,
	cin => \controller|Inst_i2c_sender|Add0~9\,
	combout => \controller|Inst_i2c_sender|Add0~10_combout\,
	cout => \controller|Inst_i2c_sender|Add0~11\);

-- Location: LCFF_X56_Y18_N15
\controller|Inst_i2c_sender|divider[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|Add0~10_combout\,
	ena => \controller|Inst_i2c_sender|divider[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|divider\(5));

-- Location: LCFF_X56_Y18_N11
\controller|Inst_i2c_sender|divider[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|Add0~6_combout\,
	ena => \controller|Inst_i2c_sender|divider[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|divider\(3));

-- Location: LCCOMB_X56_Y18_N20
\controller|Inst_i2c_sender|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Equal3~1_combout\ = (!\controller|Inst_i2c_sender|divider\(4) & (!\controller|Inst_i2c_sender|divider\(5) & (!\controller|Inst_i2c_sender|divider\(2) & !\controller|Inst_i2c_sender|divider\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|divider\(4),
	datab => \controller|Inst_i2c_sender|divider\(5),
	datac => \controller|Inst_i2c_sender|divider\(2),
	datad => \controller|Inst_i2c_sender|divider\(3),
	combout => \controller|Inst_i2c_sender|Equal3~1_combout\);

-- Location: LCCOMB_X53_Y19_N4
\controller|Inst_ov7670_registers|address[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_ov7670_registers|address[0]~8_combout\ = (\controller|Inst_i2c_sender|taken~regout\ & (\controller|Inst_ov7670_registers|address\(0) $ (VCC))) # (!\controller|Inst_i2c_sender|taken~regout\ & (\controller|Inst_ov7670_registers|address\(0) 
-- & VCC))
-- \controller|Inst_ov7670_registers|address[0]~9\ = CARRY((\controller|Inst_i2c_sender|taken~regout\ & \controller|Inst_ov7670_registers|address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|taken~regout\,
	datab => \controller|Inst_ov7670_registers|address\(0),
	datad => VCC,
	combout => \controller|Inst_ov7670_registers|address[0]~8_combout\,
	cout => \controller|Inst_ov7670_registers|address[0]~9\);

-- Location: LCCOMB_X50_Y20_N8
\btn_debounce|c[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[0]~24_combout\ = \btn_debounce|c\(0) $ (VCC)
-- \btn_debounce|c[0]~25\ = CARRY(\btn_debounce|c\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_debounce|c\(0),
	datad => VCC,
	combout => \btn_debounce|c[0]~24_combout\,
	cout => \btn_debounce|c[0]~25\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_btn,
	combout => \btn~combout\);

-- Location: LCFF_X50_Y20_N9
\btn_debounce|c[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[0]~24_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(0));

-- Location: LCCOMB_X50_Y20_N10
\btn_debounce|c[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[1]~26_combout\ = (\btn_debounce|c\(1) & (!\btn_debounce|c[0]~25\)) # (!\btn_debounce|c\(1) & ((\btn_debounce|c[0]~25\) # (GND)))
-- \btn_debounce|c[1]~27\ = CARRY((!\btn_debounce|c[0]~25\) # (!\btn_debounce|c\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(1),
	datad => VCC,
	cin => \btn_debounce|c[0]~25\,
	combout => \btn_debounce|c[1]~26_combout\,
	cout => \btn_debounce|c[1]~27\);

-- Location: LCCOMB_X50_Y20_N14
\btn_debounce|c[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[3]~30_combout\ = (\btn_debounce|c\(3) & (!\btn_debounce|c[2]~29\)) # (!\btn_debounce|c\(3) & ((\btn_debounce|c[2]~29\) # (GND)))
-- \btn_debounce|c[3]~31\ = CARRY((!\btn_debounce|c[2]~29\) # (!\btn_debounce|c\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btn_debounce|c\(3),
	datad => VCC,
	cin => \btn_debounce|c[2]~29\,
	combout => \btn_debounce|c[3]~30_combout\,
	cout => \btn_debounce|c[3]~31\);

-- Location: LCFF_X50_Y20_N15
\btn_debounce|c[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[3]~30_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(3));

-- Location: LCCOMB_X50_Y20_N18
\btn_debounce|c[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[5]~34_combout\ = (\btn_debounce|c\(5) & (!\btn_debounce|c[4]~33\)) # (!\btn_debounce|c\(5) & ((\btn_debounce|c[4]~33\) # (GND)))
-- \btn_debounce|c[5]~35\ = CARRY((!\btn_debounce|c[4]~33\) # (!\btn_debounce|c\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btn_debounce|c\(5),
	datad => VCC,
	cin => \btn_debounce|c[4]~33\,
	combout => \btn_debounce|c[5]~34_combout\,
	cout => \btn_debounce|c[5]~35\);

-- Location: LCFF_X50_Y20_N19
\btn_debounce|c[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[5]~34_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(5));

-- Location: LCCOMB_X50_Y20_N22
\btn_debounce|c[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[7]~38_combout\ = (\btn_debounce|c\(7) & (!\btn_debounce|c[6]~37\)) # (!\btn_debounce|c\(7) & ((\btn_debounce|c[6]~37\) # (GND)))
-- \btn_debounce|c[7]~39\ = CARRY((!\btn_debounce|c[6]~37\) # (!\btn_debounce|c\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btn_debounce|c\(7),
	datad => VCC,
	cin => \btn_debounce|c[6]~37\,
	combout => \btn_debounce|c[7]~38_combout\,
	cout => \btn_debounce|c[7]~39\);

-- Location: LCFF_X50_Y20_N23
\btn_debounce|c[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[7]~38_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(7));

-- Location: LCCOMB_X50_Y20_N24
\btn_debounce|c[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[8]~40_combout\ = (\btn_debounce|c\(8) & (\btn_debounce|c[7]~39\ $ (GND))) # (!\btn_debounce|c\(8) & (!\btn_debounce|c[7]~39\ & VCC))
-- \btn_debounce|c[8]~41\ = CARRY((\btn_debounce|c\(8) & !\btn_debounce|c[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(8),
	datad => VCC,
	cin => \btn_debounce|c[7]~39\,
	combout => \btn_debounce|c[8]~40_combout\,
	cout => \btn_debounce|c[8]~41\);

-- Location: LCCOMB_X50_Y20_N26
\btn_debounce|c[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[9]~42_combout\ = (\btn_debounce|c\(9) & (!\btn_debounce|c[8]~41\)) # (!\btn_debounce|c\(9) & ((\btn_debounce|c[8]~41\) # (GND)))
-- \btn_debounce|c[9]~43\ = CARRY((!\btn_debounce|c[8]~41\) # (!\btn_debounce|c\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btn_debounce|c\(9),
	datad => VCC,
	cin => \btn_debounce|c[8]~41\,
	combout => \btn_debounce|c[9]~42_combout\,
	cout => \btn_debounce|c[9]~43\);

-- Location: LCFF_X50_Y20_N27
\btn_debounce|c[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[9]~42_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(9));

-- Location: LCCOMB_X50_Y20_N28
\btn_debounce|c[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[10]~44_combout\ = (\btn_debounce|c\(10) & (\btn_debounce|c[9]~43\ $ (GND))) # (!\btn_debounce|c\(10) & (!\btn_debounce|c[9]~43\ & VCC))
-- \btn_debounce|c[10]~45\ = CARRY((\btn_debounce|c\(10) & !\btn_debounce|c[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btn_debounce|c\(10),
	datad => VCC,
	cin => \btn_debounce|c[9]~43\,
	combout => \btn_debounce|c[10]~44_combout\,
	cout => \btn_debounce|c[10]~45\);

-- Location: LCFF_X50_Y20_N29
\btn_debounce|c[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[10]~44_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(10));

-- Location: LCCOMB_X50_Y20_N30
\btn_debounce|c[11]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[11]~46_combout\ = (\btn_debounce|c\(11) & (!\btn_debounce|c[10]~45\)) # (!\btn_debounce|c\(11) & ((\btn_debounce|c[10]~45\) # (GND)))
-- \btn_debounce|c[11]~47\ = CARRY((!\btn_debounce|c[10]~45\) # (!\btn_debounce|c\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btn_debounce|c\(11),
	datad => VCC,
	cin => \btn_debounce|c[10]~45\,
	combout => \btn_debounce|c[11]~46_combout\,
	cout => \btn_debounce|c[11]~47\);

-- Location: LCFF_X50_Y20_N31
\btn_debounce|c[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[11]~46_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(11));

-- Location: LCCOMB_X50_Y19_N0
\btn_debounce|c[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[12]~48_combout\ = (\btn_debounce|c\(12) & (\btn_debounce|c[11]~47\ $ (GND))) # (!\btn_debounce|c\(12) & (!\btn_debounce|c[11]~47\ & VCC))
-- \btn_debounce|c[12]~49\ = CARRY((\btn_debounce|c\(12) & !\btn_debounce|c[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btn_debounce|c\(12),
	datad => VCC,
	cin => \btn_debounce|c[11]~47\,
	combout => \btn_debounce|c[12]~48_combout\,
	cout => \btn_debounce|c[12]~49\);

-- Location: LCFF_X50_Y19_N1
\btn_debounce|c[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[12]~48_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(12));

-- Location: LCCOMB_X50_Y19_N2
\btn_debounce|c[13]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[13]~50_combout\ = (\btn_debounce|c\(13) & (!\btn_debounce|c[12]~49\)) # (!\btn_debounce|c\(13) & ((\btn_debounce|c[12]~49\) # (GND)))
-- \btn_debounce|c[13]~51\ = CARRY((!\btn_debounce|c[12]~49\) # (!\btn_debounce|c\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btn_debounce|c\(13),
	datad => VCC,
	cin => \btn_debounce|c[12]~49\,
	combout => \btn_debounce|c[13]~50_combout\,
	cout => \btn_debounce|c[13]~51\);

-- Location: LCFF_X50_Y19_N3
\btn_debounce|c[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[13]~50_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(13));

-- Location: LCCOMB_X50_Y19_N4
\btn_debounce|c[14]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[14]~52_combout\ = (\btn_debounce|c\(14) & (\btn_debounce|c[13]~51\ $ (GND))) # (!\btn_debounce|c\(14) & (!\btn_debounce|c[13]~51\ & VCC))
-- \btn_debounce|c[14]~53\ = CARRY((\btn_debounce|c\(14) & !\btn_debounce|c[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btn_debounce|c\(14),
	datad => VCC,
	cin => \btn_debounce|c[13]~51\,
	combout => \btn_debounce|c[14]~52_combout\,
	cout => \btn_debounce|c[14]~53\);

-- Location: LCFF_X50_Y19_N5
\btn_debounce|c[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[14]~52_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(14));

-- Location: LCCOMB_X50_Y19_N8
\btn_debounce|c[16]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[16]~56_combout\ = (\btn_debounce|c\(16) & (\btn_debounce|c[15]~55\ $ (GND))) # (!\btn_debounce|c\(16) & (!\btn_debounce|c[15]~55\ & VCC))
-- \btn_debounce|c[16]~57\ = CARRY((\btn_debounce|c\(16) & !\btn_debounce|c[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btn_debounce|c\(16),
	datad => VCC,
	cin => \btn_debounce|c[15]~55\,
	combout => \btn_debounce|c[16]~56_combout\,
	cout => \btn_debounce|c[16]~57\);

-- Location: LCFF_X50_Y19_N9
\btn_debounce|c[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[16]~56_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(16));

-- Location: LCCOMB_X50_Y19_N10
\btn_debounce|c[17]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[17]~58_combout\ = (\btn_debounce|c\(17) & (!\btn_debounce|c[16]~57\)) # (!\btn_debounce|c\(17) & ((\btn_debounce|c[16]~57\) # (GND)))
-- \btn_debounce|c[17]~59\ = CARRY((!\btn_debounce|c[16]~57\) # (!\btn_debounce|c\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(17),
	datad => VCC,
	cin => \btn_debounce|c[16]~57\,
	combout => \btn_debounce|c[17]~58_combout\,
	cout => \btn_debounce|c[17]~59\);

-- Location: LCCOMB_X50_Y19_N14
\btn_debounce|c[19]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[19]~62_combout\ = (\btn_debounce|c\(19) & (!\btn_debounce|c[18]~61\)) # (!\btn_debounce|c\(19) & ((\btn_debounce|c[18]~61\) # (GND)))
-- \btn_debounce|c[19]~63\ = CARRY((!\btn_debounce|c[18]~61\) # (!\btn_debounce|c\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btn_debounce|c\(19),
	datad => VCC,
	cin => \btn_debounce|c[18]~61\,
	combout => \btn_debounce|c[19]~62_combout\,
	cout => \btn_debounce|c[19]~63\);

-- Location: LCFF_X50_Y19_N15
\btn_debounce|c[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[19]~62_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(19));

-- Location: LCCOMB_X50_Y19_N16
\btn_debounce|c[20]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[20]~64_combout\ = (\btn_debounce|c\(20) & (\btn_debounce|c[19]~63\ $ (GND))) # (!\btn_debounce|c\(20) & (!\btn_debounce|c[19]~63\ & VCC))
-- \btn_debounce|c[20]~65\ = CARRY((\btn_debounce|c\(20) & !\btn_debounce|c[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(20),
	datad => VCC,
	cin => \btn_debounce|c[19]~63\,
	combout => \btn_debounce|c[20]~64_combout\,
	cout => \btn_debounce|c[20]~65\);

-- Location: LCCOMB_X50_Y19_N18
\btn_debounce|c[21]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[21]~66_combout\ = (\btn_debounce|c\(21) & (!\btn_debounce|c[20]~65\)) # (!\btn_debounce|c\(21) & ((\btn_debounce|c[20]~65\) # (GND)))
-- \btn_debounce|c[21]~67\ = CARRY((!\btn_debounce|c[20]~65\) # (!\btn_debounce|c\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btn_debounce|c\(21),
	datad => VCC,
	cin => \btn_debounce|c[20]~65\,
	combout => \btn_debounce|c[21]~66_combout\,
	cout => \btn_debounce|c[21]~67\);

-- Location: LCFF_X50_Y19_N19
\btn_debounce|c[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[21]~66_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(21));

-- Location: LCFF_X50_Y19_N17
\btn_debounce|c[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[20]~64_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(20));

-- Location: LCCOMB_X50_Y19_N22
\btn_debounce|c[23]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|c[23]~70_combout\ = \btn_debounce|c[22]~69\ $ (\btn_debounce|c\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \btn_debounce|c\(23),
	cin => \btn_debounce|c[22]~69\,
	combout => \btn_debounce|c[23]~70_combout\);

-- Location: LCFF_X50_Y19_N23
\btn_debounce|c[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[23]~70_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(23));

-- Location: LCCOMB_X50_Y19_N30
\btn_debounce|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|Equal0~6_combout\ = (\btn_debounce|c\(22) & (\btn_debounce|c\(21) & (\btn_debounce|c\(20) & \btn_debounce|c\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(22),
	datab => \btn_debounce|c\(21),
	datac => \btn_debounce|c\(20),
	datad => \btn_debounce|c\(23),
	combout => \btn_debounce|Equal0~6_combout\);

-- Location: LCFF_X50_Y19_N11
\btn_debounce|c[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[17]~58_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(17));

-- Location: LCCOMB_X50_Y19_N24
\btn_debounce|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|Equal0~5_combout\ = (\btn_debounce|c\(18) & (\btn_debounce|c\(19) & (\btn_debounce|c\(16) & \btn_debounce|c\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(18),
	datab => \btn_debounce|c\(19),
	datac => \btn_debounce|c\(16),
	datad => \btn_debounce|c\(17),
	combout => \btn_debounce|Equal0~5_combout\);

-- Location: LCFF_X50_Y20_N25
\btn_debounce|c[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[8]~40_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(8));

-- Location: LCCOMB_X50_Y20_N0
\btn_debounce|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|Equal0~2_combout\ = (\btn_debounce|c\(11) & (\btn_debounce|c\(10) & (\btn_debounce|c\(8) & \btn_debounce|c\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(11),
	datab => \btn_debounce|c\(10),
	datac => \btn_debounce|c\(8),
	datad => \btn_debounce|c\(9),
	combout => \btn_debounce|Equal0~2_combout\);

-- Location: LCFF_X50_Y20_N11
\btn_debounce|c[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|c[1]~26_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|c\(1));

-- Location: LCCOMB_X50_Y20_N4
\btn_debounce|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|Equal0~0_combout\ = (\btn_debounce|c\(2) & (\btn_debounce|c\(3) & (\btn_debounce|c\(0) & \btn_debounce|c\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(2),
	datab => \btn_debounce|c\(3),
	datac => \btn_debounce|c\(0),
	datad => \btn_debounce|c\(1),
	combout => \btn_debounce|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y19_N26
\btn_debounce|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|Equal0~3_combout\ = (\btn_debounce|c\(15) & (\btn_debounce|c\(13) & (\btn_debounce|c\(14) & \btn_debounce|c\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|c\(15),
	datab => \btn_debounce|c\(13),
	datac => \btn_debounce|c\(14),
	datad => \btn_debounce|c\(12),
	combout => \btn_debounce|Equal0~3_combout\);

-- Location: LCCOMB_X50_Y20_N2
\btn_debounce|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|Equal0~4_combout\ = (\btn_debounce|Equal0~1_combout\ & (\btn_debounce|Equal0~2_combout\ & (\btn_debounce|Equal0~0_combout\ & \btn_debounce|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_debounce|Equal0~1_combout\,
	datab => \btn_debounce|Equal0~2_combout\,
	datac => \btn_debounce|Equal0~0_combout\,
	datad => \btn_debounce|Equal0~3_combout\,
	combout => \btn_debounce|Equal0~4_combout\);

-- Location: LCCOMB_X50_Y19_N28
\btn_debounce|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \btn_debounce|Equal0~7_combout\ = (\btn_debounce|Equal0~6_combout\ & (\btn_debounce|Equal0~5_combout\ & \btn_debounce|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_debounce|Equal0~6_combout\,
	datac => \btn_debounce|Equal0~5_combout\,
	datad => \btn_debounce|Equal0~4_combout\,
	combout => \btn_debounce|Equal0~7_combout\);

-- Location: LCFF_X50_Y19_N29
\btn_debounce|o\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \btn_debounce|Equal0~7_combout\,
	sclr => \ALT_INV_btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_debounce|o~regout\);

-- Location: LCFF_X53_Y19_N5
\controller|Inst_ov7670_registers|address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_ov7670_registers|address[0]~8_combout\,
	sclr => \btn_debounce|o~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_ov7670_registers|address\(0));

-- Location: LCCOMB_X53_Y19_N6
\controller|Inst_ov7670_registers|address[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_ov7670_registers|address[1]~10_combout\ = (\controller|Inst_ov7670_registers|address\(1) & (!\controller|Inst_ov7670_registers|address[0]~9\)) # (!\controller|Inst_ov7670_registers|address\(1) & 
-- ((\controller|Inst_ov7670_registers|address[0]~9\) # (GND)))
-- \controller|Inst_ov7670_registers|address[1]~11\ = CARRY((!\controller|Inst_ov7670_registers|address[0]~9\) # (!\controller|Inst_ov7670_registers|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_ov7670_registers|address\(1),
	datad => VCC,
	cin => \controller|Inst_ov7670_registers|address[0]~9\,
	combout => \controller|Inst_ov7670_registers|address[1]~10_combout\,
	cout => \controller|Inst_ov7670_registers|address[1]~11\);

-- Location: LCFF_X53_Y19_N7
\controller|Inst_ov7670_registers|address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_ov7670_registers|address[1]~10_combout\,
	sclr => \btn_debounce|o~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_ov7670_registers|address\(1));

-- Location: LCCOMB_X53_Y19_N8
\controller|Inst_ov7670_registers|address[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_ov7670_registers|address[2]~12_combout\ = (\controller|Inst_ov7670_registers|address\(2) & (\controller|Inst_ov7670_registers|address[1]~11\ $ (GND))) # (!\controller|Inst_ov7670_registers|address\(2) & 
-- (!\controller|Inst_ov7670_registers|address[1]~11\ & VCC))
-- \controller|Inst_ov7670_registers|address[2]~13\ = CARRY((\controller|Inst_ov7670_registers|address\(2) & !\controller|Inst_ov7670_registers|address[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_ov7670_registers|address\(2),
	datad => VCC,
	cin => \controller|Inst_ov7670_registers|address[1]~11\,
	combout => \controller|Inst_ov7670_registers|address[2]~12_combout\,
	cout => \controller|Inst_ov7670_registers|address[2]~13\);

-- Location: LCFF_X53_Y19_N9
\controller|Inst_ov7670_registers|address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_ov7670_registers|address[2]~12_combout\,
	sclr => \btn_debounce|o~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_ov7670_registers|address\(2));

-- Location: LCCOMB_X53_Y19_N10
\controller|Inst_ov7670_registers|address[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_ov7670_registers|address[3]~14_combout\ = (\controller|Inst_ov7670_registers|address\(3) & (!\controller|Inst_ov7670_registers|address[2]~13\)) # (!\controller|Inst_ov7670_registers|address\(3) & 
-- ((\controller|Inst_ov7670_registers|address[2]~13\) # (GND)))
-- \controller|Inst_ov7670_registers|address[3]~15\ = CARRY((!\controller|Inst_ov7670_registers|address[2]~13\) # (!\controller|Inst_ov7670_registers|address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_ov7670_registers|address\(3),
	datad => VCC,
	cin => \controller|Inst_ov7670_registers|address[2]~13\,
	combout => \controller|Inst_ov7670_registers|address[3]~14_combout\,
	cout => \controller|Inst_ov7670_registers|address[3]~15\);

-- Location: LCFF_X53_Y19_N11
\controller|Inst_ov7670_registers|address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_ov7670_registers|address[3]~14_combout\,
	sclr => \btn_debounce|o~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_ov7670_registers|address\(3));

-- Location: LCCOMB_X53_Y19_N12
\controller|Inst_ov7670_registers|address[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_ov7670_registers|address[4]~16_combout\ = (\controller|Inst_ov7670_registers|address\(4) & (\controller|Inst_ov7670_registers|address[3]~15\ $ (GND))) # (!\controller|Inst_ov7670_registers|address\(4) & 
-- (!\controller|Inst_ov7670_registers|address[3]~15\ & VCC))
-- \controller|Inst_ov7670_registers|address[4]~17\ = CARRY((\controller|Inst_ov7670_registers|address\(4) & !\controller|Inst_ov7670_registers|address[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_ov7670_registers|address\(4),
	datad => VCC,
	cin => \controller|Inst_ov7670_registers|address[3]~15\,
	combout => \controller|Inst_ov7670_registers|address[4]~16_combout\,
	cout => \controller|Inst_ov7670_registers|address[4]~17\);

-- Location: LCFF_X53_Y19_N13
\controller|Inst_ov7670_registers|address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_ov7670_registers|address[4]~16_combout\,
	sclr => \btn_debounce|o~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_ov7670_registers|address\(4));

-- Location: LCCOMB_X53_Y19_N14
\controller|Inst_ov7670_registers|address[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_ov7670_registers|address[5]~18_combout\ = (\controller|Inst_ov7670_registers|address\(5) & (!\controller|Inst_ov7670_registers|address[4]~17\)) # (!\controller|Inst_ov7670_registers|address\(5) & 
-- ((\controller|Inst_ov7670_registers|address[4]~17\) # (GND)))
-- \controller|Inst_ov7670_registers|address[5]~19\ = CARRY((!\controller|Inst_ov7670_registers|address[4]~17\) # (!\controller|Inst_ov7670_registers|address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_ov7670_registers|address\(5),
	datad => VCC,
	cin => \controller|Inst_ov7670_registers|address[4]~17\,
	combout => \controller|Inst_ov7670_registers|address[5]~18_combout\,
	cout => \controller|Inst_ov7670_registers|address[5]~19\);

-- Location: LCFF_X53_Y19_N15
\controller|Inst_ov7670_registers|address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_ov7670_registers|address[5]~18_combout\,
	sclr => \btn_debounce|o~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_ov7670_registers|address\(5));

-- Location: LCCOMB_X53_Y19_N16
\controller|Inst_ov7670_registers|address[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_ov7670_registers|address[6]~20_combout\ = (\controller|Inst_ov7670_registers|address\(6) & (\controller|Inst_ov7670_registers|address[5]~19\ $ (GND))) # (!\controller|Inst_ov7670_registers|address\(6) & 
-- (!\controller|Inst_ov7670_registers|address[5]~19\ & VCC))
-- \controller|Inst_ov7670_registers|address[6]~21\ = CARRY((\controller|Inst_ov7670_registers|address\(6) & !\controller|Inst_ov7670_registers|address[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_ov7670_registers|address\(6),
	datad => VCC,
	cin => \controller|Inst_ov7670_registers|address[5]~19\,
	combout => \controller|Inst_ov7670_registers|address[6]~20_combout\,
	cout => \controller|Inst_ov7670_registers|address[6]~21\);

-- Location: LCFF_X53_Y19_N17
\controller|Inst_ov7670_registers|address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_ov7670_registers|address[6]~20_combout\,
	sclr => \btn_debounce|o~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_ov7670_registers|address\(6));

-- Location: LCCOMB_X53_Y19_N18
\controller|Inst_ov7670_registers|address[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_ov7670_registers|address[7]~22_combout\ = \controller|Inst_ov7670_registers|address[6]~21\ $ (\controller|Inst_ov7670_registers|address\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controller|Inst_ov7670_registers|address\(7),
	cin => \controller|Inst_ov7670_registers|address[6]~21\,
	combout => \controller|Inst_ov7670_registers|address[7]~22_combout\);

-- Location: LCFF_X53_Y19_N19
\controller|Inst_ov7670_registers|address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_ov7670_registers|address[7]~22_combout\,
	sclr => \btn_debounce|o~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_ov7670_registers|address\(7));

-- Location: LCCOMB_X53_Y18_N14
\controller|Inst_ov7670_registers|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_ov7670_registers|Equal0~2_combout\ = (\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a8\ & (\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a9\ & 
-- (\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a10\ & \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a8\,
	datab => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a9\,
	datac => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a10\,
	datad => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a11\,
	combout => \controller|Inst_ov7670_registers|Equal0~2_combout\);

-- Location: LCCOMB_X53_Y18_N8
\controller|Inst_ov7670_registers|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_ov7670_registers|Equal0~3_combout\ = (\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a15\ & (\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a13\ & 
-- (\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a14\ & \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a15\,
	datab => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a13\,
	datac => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a14\,
	datad => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a12\,
	combout => \controller|Inst_ov7670_registers|Equal0~3_combout\);

-- Location: LCCOMB_X53_Y18_N12
\controller|Inst_ov7670_registers|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_ov7670_registers|Equal0~1_combout\ = (\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a7\ & (\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a5\ & 
-- (\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a4\ & \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a7\,
	datab => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a5\,
	datac => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a4\,
	datad => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a6\,
	combout => \controller|Inst_ov7670_registers|Equal0~1_combout\);

-- Location: LCCOMB_X53_Y18_N2
\controller|Inst_ov7670_registers|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_ov7670_registers|Equal0~4_combout\ = (\controller|Inst_ov7670_registers|Equal0~0_combout\ & (\controller|Inst_ov7670_registers|Equal0~2_combout\ & (\controller|Inst_ov7670_registers|Equal0~3_combout\ & 
-- \controller|Inst_ov7670_registers|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_ov7670_registers|Equal0~0_combout\,
	datab => \controller|Inst_ov7670_registers|Equal0~2_combout\,
	datac => \controller|Inst_ov7670_registers|Equal0~3_combout\,
	datad => \controller|Inst_ov7670_registers|Equal0~1_combout\,
	combout => \controller|Inst_ov7670_registers|Equal0~4_combout\);

-- Location: LCCOMB_X53_Y18_N26
\controller|Inst_i2c_sender|divider[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|divider[4]~0_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31)) # ((!\controller|Inst_ov7670_registers|Equal0~4_combout\ & ((!\controller|Inst_i2c_sender|Equal3~1_combout\) # 
-- (!\controller|Inst_i2c_sender|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|Equal3~0_combout\,
	datab => \controller|Inst_i2c_sender|Equal3~1_combout\,
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_ov7670_registers|Equal0~4_combout\,
	combout => \controller|Inst_i2c_sender|divider[4]~0_combout\);

-- Location: LCFF_X56_Y18_N9
\controller|Inst_i2c_sender|divider[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|Add0~4_combout\,
	ena => \controller|Inst_i2c_sender|divider[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|divider\(2));

-- Location: LCCOMB_X54_Y18_N10
\controller|Inst_i2c_sender|divider~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|divider~1_combout\ = (!\controller|Inst_i2c_sender|busy_sr\(31) & !\controller|Inst_i2c_sender|divider\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|divider\(0),
	combout => \controller|Inst_i2c_sender|divider~1_combout\);

-- Location: LCCOMB_X53_Y18_N16
\controller|Inst_i2c_sender|divider~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|divider~2_combout\ = (\controller|Inst_i2c_sender|Add0~0_combout\ & (!\controller|Inst_i2c_sender|divider[4]~0_combout\ & ((!\controller|Inst_i2c_sender|divider~1_combout\) # 
-- (!\controller|Inst_ov7670_registers|Equal0~4_combout\)))) # (!\controller|Inst_i2c_sender|Add0~0_combout\ & (((!\controller|Inst_i2c_sender|divider~1_combout\)) # (!\controller|Inst_ov7670_registers|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|Add0~0_combout\,
	datab => \controller|Inst_ov7670_registers|Equal0~4_combout\,
	datac => \controller|Inst_i2c_sender|divider~1_combout\,
	datad => \controller|Inst_i2c_sender|divider[4]~0_combout\,
	combout => \controller|Inst_i2c_sender|divider~2_combout\);

-- Location: LCFF_X53_Y18_N17
\controller|Inst_i2c_sender|divider[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|divider~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|divider\(0));

-- Location: LCFF_X56_Y18_N7
\controller|Inst_i2c_sender|divider[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|Add0~2_combout\,
	ena => \controller|Inst_i2c_sender|divider[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|divider\(1));

-- Location: LCCOMB_X56_Y18_N30
\controller|Inst_i2c_sender|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Equal4~0_combout\ = (((\controller|Inst_i2c_sender|divider\(0)) # (!\controller|Inst_i2c_sender|divider\(1))) # (!\controller|Inst_i2c_sender|divider\(2))) # (!\controller|Inst_i2c_sender|divider\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|divider\(3),
	datab => \controller|Inst_i2c_sender|divider\(2),
	datac => \controller|Inst_i2c_sender|divider\(0),
	datad => \controller|Inst_i2c_sender|divider\(1),
	combout => \controller|Inst_i2c_sender|Equal4~0_combout\);

-- Location: LCCOMB_X56_Y18_N16
\controller|Inst_i2c_sender|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Add0~12_combout\ = (\controller|Inst_i2c_sender|divider\(6) & (\controller|Inst_i2c_sender|Add0~11\ $ (GND))) # (!\controller|Inst_i2c_sender|divider\(6) & (!\controller|Inst_i2c_sender|Add0~11\ & VCC))
-- \controller|Inst_i2c_sender|Add0~13\ = CARRY((\controller|Inst_i2c_sender|divider\(6) & !\controller|Inst_i2c_sender|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|divider\(6),
	datad => VCC,
	cin => \controller|Inst_i2c_sender|Add0~11\,
	combout => \controller|Inst_i2c_sender|Add0~12_combout\,
	cout => \controller|Inst_i2c_sender|Add0~13\);

-- Location: LCCOMB_X56_Y18_N18
\controller|Inst_i2c_sender|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Add0~14_combout\ = \controller|Inst_i2c_sender|Add0~13\ $ (\controller|Inst_i2c_sender|divider\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controller|Inst_i2c_sender|divider\(7),
	cin => \controller|Inst_i2c_sender|Add0~13\,
	combout => \controller|Inst_i2c_sender|Add0~14_combout\);

-- Location: LCFF_X56_Y18_N19
\controller|Inst_i2c_sender|divider[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|Add0~14_combout\,
	ena => \controller|Inst_i2c_sender|divider[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|divider\(7));

-- Location: LCCOMB_X56_Y18_N26
\controller|Inst_i2c_sender|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Equal3~0_combout\ = (!\controller|Inst_i2c_sender|divider\(6) & (!\controller|Inst_i2c_sender|divider\(7) & (\controller|Inst_i2c_sender|divider\(0) & !\controller|Inst_i2c_sender|divider\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|divider\(6),
	datab => \controller|Inst_i2c_sender|divider\(7),
	datac => \controller|Inst_i2c_sender|divider\(0),
	datad => \controller|Inst_i2c_sender|divider\(1),
	combout => \controller|Inst_i2c_sender|Equal3~0_combout\);

-- Location: LCCOMB_X53_Y18_N0
\controller|Inst_i2c_sender|busy_sr[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr[0]~3_combout\ = (\controller|Inst_i2c_sender|Equal3~1_combout\ & (\controller|Inst_i2c_sender|Equal3~0_combout\ & !\controller|Inst_ov7670_registers|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|Equal3~1_combout\,
	datac => \controller|Inst_i2c_sender|Equal3~0_combout\,
	datad => \controller|Inst_ov7670_registers|Equal0~4_combout\,
	combout => \controller|Inst_i2c_sender|busy_sr[0]~3_combout\);

-- Location: LCCOMB_X53_Y18_N6
\controller|Inst_i2c_sender|busy_sr[5]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr[5]~35_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & (!\controller|Inst_i2c_sender|Equal4~1_combout\ & (!\controller|Inst_i2c_sender|Equal4~0_combout\))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- (((\controller|Inst_i2c_sender|busy_sr[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|Equal4~1_combout\,
	datab => \controller|Inst_i2c_sender|Equal4~0_combout\,
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|busy_sr[0]~3_combout\,
	combout => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\);

-- Location: LCFF_X50_Y18_N25
\controller|Inst_i2c_sender|busy_sr[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~19_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(17));

-- Location: LCCOMB_X50_Y18_N26
\controller|Inst_i2c_sender|busy_sr~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~16_combout\ = (\controller|Inst_i2c_sender|busy_sr\(17)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(17),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~16_combout\);

-- Location: LCFF_X50_Y18_N27
\controller|Inst_i2c_sender|busy_sr[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~16_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(18));

-- Location: LCCOMB_X50_Y18_N30
\controller|Inst_i2c_sender|busy_sr~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~13_combout\ = (\controller|Inst_i2c_sender|busy_sr\(18)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(18),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~13_combout\);

-- Location: LCFF_X50_Y18_N31
\controller|Inst_i2c_sender|busy_sr[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~13_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(19));

-- Location: LCCOMB_X50_Y18_N2
\controller|Inst_i2c_sender|busy_sr~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~11_combout\ = (\controller|Inst_i2c_sender|busy_sr\(19)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(19),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~11_combout\);

-- Location: LCFF_X50_Y18_N3
\controller|Inst_i2c_sender|busy_sr[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~11_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(20));

-- Location: LCCOMB_X50_Y18_N22
\controller|Inst_i2c_sender|busy_sr~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~32_combout\ = (\controller|Inst_i2c_sender|busy_sr\(20)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(20),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~32_combout\);

-- Location: LCFF_X50_Y18_N23
\controller|Inst_i2c_sender|busy_sr[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~32_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(21));

-- Location: LCCOMB_X50_Y18_N18
\controller|Inst_i2c_sender|busy_sr~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~29_combout\ = (\controller|Inst_i2c_sender|busy_sr\(21)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(21),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~29_combout\);

-- Location: LCFF_X50_Y18_N19
\controller|Inst_i2c_sender|busy_sr[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~29_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(22));

-- Location: LCCOMB_X50_Y18_N14
\controller|Inst_i2c_sender|busy_sr~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~26_combout\ = (\controller|Inst_i2c_sender|busy_sr\(22)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(22),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~26_combout\);

-- Location: LCFF_X50_Y18_N15
\controller|Inst_i2c_sender|busy_sr[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~26_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(23));

-- Location: LCCOMB_X51_Y18_N20
\controller|Inst_i2c_sender|busy_sr~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~23_combout\ = (\controller|Inst_i2c_sender|busy_sr\(23)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|busy_sr\(23),
	combout => \controller|Inst_i2c_sender|busy_sr~23_combout\);

-- Location: LCFF_X51_Y18_N21
\controller|Inst_i2c_sender|busy_sr[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~23_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(24));

-- Location: LCCOMB_X55_Y18_N4
\controller|Inst_i2c_sender|busy_sr~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~20_combout\ = (\controller|Inst_i2c_sender|busy_sr\(24)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(24),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~20_combout\);

-- Location: LCFF_X55_Y18_N5
\controller|Inst_i2c_sender|busy_sr[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~20_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(25));

-- Location: LCCOMB_X55_Y18_N18
\controller|Inst_i2c_sender|busy_sr~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~17_combout\ = (\controller|Inst_i2c_sender|busy_sr\(25)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(25),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~17_combout\);

-- Location: LCFF_X55_Y18_N19
\controller|Inst_i2c_sender|busy_sr[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~17_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(26));

-- Location: LCCOMB_X55_Y18_N12
\controller|Inst_i2c_sender|busy_sr~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~14_combout\ = (\controller|Inst_i2c_sender|busy_sr\(26)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|busy_sr\(26),
	combout => \controller|Inst_i2c_sender|busy_sr~14_combout\);

-- Location: LCFF_X55_Y18_N13
\controller|Inst_i2c_sender|busy_sr[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~14_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(27));

-- Location: LCCOMB_X55_Y18_N22
\controller|Inst_i2c_sender|busy_sr~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~9_combout\ = (\controller|Inst_i2c_sender|busy_sr\(27)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|busy_sr\(27),
	combout => \controller|Inst_i2c_sender|busy_sr~9_combout\);

-- Location: LCFF_X55_Y18_N23
\controller|Inst_i2c_sender|busy_sr[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~9_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(28));

-- Location: LCCOMB_X55_Y18_N0
\controller|Inst_i2c_sender|busy_sr~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~4_combout\ = (\controller|Inst_i2c_sender|busy_sr\(28)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|busy_sr\(28),
	combout => \controller|Inst_i2c_sender|busy_sr~4_combout\);

-- Location: LCFF_X55_Y18_N1
\controller|Inst_i2c_sender|busy_sr[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~4_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(29));

-- Location: LCCOMB_X55_Y18_N28
\controller|Inst_i2c_sender|busy_sr~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~6_combout\ = (\controller|Inst_i2c_sender|busy_sr\(29)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|busy_sr\(29),
	combout => \controller|Inst_i2c_sender|busy_sr~6_combout\);

-- Location: LCFF_X55_Y18_N29
\controller|Inst_i2c_sender|busy_sr[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~6_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(30));

-- Location: LCCOMB_X53_Y18_N30
\controller|Inst_i2c_sender|busy_sr[31]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr[31]~8_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & ((\controller|Inst_i2c_sender|Equal4~2_combout\) # ((\controller|Inst_i2c_sender|busy_sr\(30))))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- (((\controller|Inst_i2c_sender|busy_sr[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|Equal4~2_combout\,
	datab => \controller|Inst_i2c_sender|busy_sr\(30),
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|busy_sr[0]~3_combout\,
	combout => \controller|Inst_i2c_sender|busy_sr[31]~8_combout\);

-- Location: LCFF_X53_Y18_N31
\controller|Inst_i2c_sender|busy_sr[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr[31]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(31));

-- Location: LCCOMB_X51_Y18_N8
\controller|Inst_i2c_sender|data_sr~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~17_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & (\controller|Inst_i2c_sender|data_sr\(13))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- ((!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|data_sr\(13),
	datab => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a5\,
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|data_sr~17_combout\);

-- Location: LCFF_X51_Y18_N9
\controller|Inst_i2c_sender|data_sr[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~17_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(14));

-- Location: LCCOMB_X51_Y18_N6
\controller|Inst_i2c_sender|data_sr~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~16_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & (\controller|Inst_i2c_sender|data_sr\(14))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- ((!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datac => \controller|Inst_i2c_sender|data_sr\(14),
	datad => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a4\,
	combout => \controller|Inst_i2c_sender|data_sr~16_combout\);

-- Location: LCFF_X51_Y18_N7
\controller|Inst_i2c_sender|data_sr[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~16_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(15));

-- Location: LCCOMB_X54_Y18_N2
\controller|Inst_i2c_sender|data_sr~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~15_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & (\controller|Inst_i2c_sender|data_sr\(15))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- ((!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|data_sr\(15),
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a3\,
	combout => \controller|Inst_i2c_sender|data_sr~15_combout\);

-- Location: LCFF_X54_Y18_N3
\controller|Inst_i2c_sender|data_sr[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~15_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(16));

-- Location: LCCOMB_X54_Y18_N8
\controller|Inst_i2c_sender|data_sr~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~14_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & ((\controller|Inst_i2c_sender|data_sr\(16)))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- (!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a2\,
	datab => \controller|Inst_i2c_sender|data_sr\(16),
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|data_sr~14_combout\);

-- Location: LCFF_X54_Y18_N9
\controller|Inst_i2c_sender|data_sr[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~14_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(17));

-- Location: LCCOMB_X54_Y18_N18
\controller|Inst_i2c_sender|data_sr~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~13_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & (\controller|Inst_i2c_sender|data_sr\(17))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- ((!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|data_sr\(17),
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a1\,
	combout => \controller|Inst_i2c_sender|data_sr~13_combout\);

-- Location: LCFF_X54_Y18_N19
\controller|Inst_i2c_sender|data_sr[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~13_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(18));

-- Location: LCCOMB_X54_Y18_N4
\controller|Inst_i2c_sender|data_sr~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~12_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & (\controller|Inst_i2c_sender|data_sr\(18))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- ((!\controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|data_sr\(18),
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_ov7670_registers|Mux0_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \controller|Inst_i2c_sender|data_sr~12_combout\);

-- Location: LCFF_X54_Y18_N5
\controller|Inst_i2c_sender|data_sr[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~12_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(19));

-- Location: LCCOMB_X54_Y18_N6
\controller|Inst_i2c_sender|data_sr~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~11_combout\ = (\controller|Inst_i2c_sender|data_sr\(19)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(31),
	datac => \controller|Inst_i2c_sender|data_sr\(19),
	combout => \controller|Inst_i2c_sender|data_sr~11_combout\);

-- Location: LCFF_X54_Y18_N7
\controller|Inst_i2c_sender|data_sr[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~11_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(20));

-- Location: LCCOMB_X54_Y18_N16
\controller|Inst_i2c_sender|data_sr~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~10_combout\ = (\controller|Inst_i2c_sender|data_sr\(20)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|data_sr\(20),
	combout => \controller|Inst_i2c_sender|data_sr~10_combout\);

-- Location: LCFF_X54_Y18_N17
\controller|Inst_i2c_sender|data_sr[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~10_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(21));

-- Location: LCCOMB_X55_Y18_N8
\controller|Inst_i2c_sender|data_sr~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~9_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & \controller|Inst_i2c_sender|data_sr\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|data_sr\(21),
	combout => \controller|Inst_i2c_sender|data_sr~9_combout\);

-- Location: LCFF_X55_Y18_N9
\controller|Inst_i2c_sender|data_sr[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~9_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(22));

-- Location: LCCOMB_X55_Y18_N26
\controller|Inst_i2c_sender|data_sr~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~8_combout\ = (\controller|Inst_i2c_sender|data_sr\(22)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|data_sr\(22),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|data_sr~8_combout\);

-- Location: LCFF_X54_Y18_N11
\controller|Inst_i2c_sender|data_sr[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \controller|Inst_i2c_sender|data_sr~8_combout\,
	sload => VCC,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(23));

-- Location: LCCOMB_X54_Y18_N26
\controller|Inst_i2c_sender|data_sr~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~7_combout\ = (\controller|Inst_i2c_sender|data_sr\(23)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|data_sr\(23),
	combout => \controller|Inst_i2c_sender|data_sr~7_combout\);

-- Location: LCFF_X54_Y18_N27
\controller|Inst_i2c_sender|data_sr[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~7_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(24));

-- Location: LCCOMB_X54_Y18_N22
\controller|Inst_i2c_sender|data_sr~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~6_combout\ = (\controller|Inst_i2c_sender|data_sr\(24)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|data_sr\(24),
	combout => \controller|Inst_i2c_sender|data_sr~6_combout\);

-- Location: LCFF_X54_Y18_N23
\controller|Inst_i2c_sender|data_sr[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~6_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(25));

-- Location: LCCOMB_X54_Y18_N20
\controller|Inst_i2c_sender|data_sr~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~5_combout\ = (\controller|Inst_i2c_sender|data_sr\(25)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|data_sr\(25),
	combout => \controller|Inst_i2c_sender|data_sr~5_combout\);

-- Location: LCFF_X54_Y18_N21
\controller|Inst_i2c_sender|data_sr[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~5_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(26));

-- Location: LCCOMB_X54_Y18_N14
\controller|Inst_i2c_sender|data_sr~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~4_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & \controller|Inst_i2c_sender|data_sr\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(31),
	datac => \controller|Inst_i2c_sender|data_sr\(26),
	combout => \controller|Inst_i2c_sender|data_sr~4_combout\);

-- Location: LCFF_X54_Y18_N15
\controller|Inst_i2c_sender|data_sr[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~4_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(27));

-- Location: LCCOMB_X54_Y18_N12
\controller|Inst_i2c_sender|data_sr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~3_combout\ = (\controller|Inst_i2c_sender|data_sr\(27)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Inst_i2c_sender|busy_sr\(31),
	datac => \controller|Inst_i2c_sender|data_sr\(27),
	combout => \controller|Inst_i2c_sender|data_sr~3_combout\);

-- Location: LCFF_X54_Y18_N13
\controller|Inst_i2c_sender|data_sr[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~3_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(28));

-- Location: LCCOMB_X54_Y18_N30
\controller|Inst_i2c_sender|data_sr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~2_combout\ = (\controller|Inst_i2c_sender|data_sr\(28)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|data_sr\(28),
	combout => \controller|Inst_i2c_sender|data_sr~2_combout\);

-- Location: LCFF_X54_Y18_N31
\controller|Inst_i2c_sender|data_sr[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~2_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(29));

-- Location: LCCOMB_X54_Y18_N28
\controller|Inst_i2c_sender|data_sr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~1_combout\ = (\controller|Inst_i2c_sender|data_sr\(29)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|data_sr\(29),
	combout => \controller|Inst_i2c_sender|data_sr~1_combout\);

-- Location: LCFF_X54_Y18_N29
\controller|Inst_i2c_sender|data_sr[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~1_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(30));

-- Location: LCCOMB_X54_Y18_N0
\controller|Inst_i2c_sender|data_sr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|data_sr~0_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & \controller|Inst_i2c_sender|data_sr\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Inst_i2c_sender|busy_sr\(31),
	datad => \controller|Inst_i2c_sender|data_sr\(30),
	combout => \controller|Inst_i2c_sender|data_sr~0_combout\);

-- Location: LCFF_X54_Y18_N1
\controller|Inst_i2c_sender|data_sr[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|data_sr~0_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|data_sr\(31));

-- Location: LCCOMB_X50_Y18_N16
\controller|Inst_i2c_sender|busy_sr~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr~10_combout\ = (\controller|Inst_i2c_sender|busy_sr\(10)) # (!\controller|Inst_i2c_sender|busy_sr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(10),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|busy_sr~10_combout\);

-- Location: LCFF_X50_Y18_N17
\controller|Inst_i2c_sender|busy_sr[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr~10_combout\,
	ena => \controller|Inst_i2c_sender|busy_sr[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(11));

-- Location: LCCOMB_X50_Y18_N0
\controller|Inst_i2c_sender|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|process_0~0_combout\ = (\controller|Inst_i2c_sender|busy_sr\(10) & (\controller|Inst_i2c_sender|busy_sr\(20) & ((!\controller|Inst_i2c_sender|busy_sr\(19))))) # (!\controller|Inst_i2c_sender|busy_sr\(10) & 
-- ((\controller|Inst_i2c_sender|busy_sr\(11)) # ((\controller|Inst_i2c_sender|busy_sr\(20) & !\controller|Inst_i2c_sender|busy_sr\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(10),
	datab => \controller|Inst_i2c_sender|busy_sr\(20),
	datac => \controller|Inst_i2c_sender|busy_sr\(11),
	datad => \controller|Inst_i2c_sender|busy_sr\(19),
	combout => \controller|Inst_i2c_sender|process_0~0_combout\);

-- Location: LCCOMB_X56_Y18_N0
\controller|Inst_i2c_sender|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|process_0~1_combout\ = (!\controller|Inst_i2c_sender|process_0~0_combout\ & ((\controller|Inst_i2c_sender|busy_sr\(28)) # (!\controller|Inst_i2c_sender|busy_sr\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(29),
	datab => \controller|Inst_i2c_sender|busy_sr\(28),
	datac => \controller|Inst_i2c_sender|process_0~0_combout\,
	combout => \controller|Inst_i2c_sender|process_0~1_combout\);

-- Location: LCCOMB_X53_Y18_N28
\controller|Inst_i2c_sender|busy_sr[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|busy_sr[0]~7_combout\ = (\controller|Inst_i2c_sender|busy_sr\(31) & (\controller|Inst_i2c_sender|Equal4~2_combout\ & (\controller|Inst_i2c_sender|busy_sr\(0)))) # (!\controller|Inst_i2c_sender|busy_sr\(31) & 
-- (((\controller|Inst_i2c_sender|busy_sr\(0)) # (\controller|Inst_i2c_sender|busy_sr[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|Equal4~2_combout\,
	datab => \controller|Inst_i2c_sender|busy_sr\(31),
	datac => \controller|Inst_i2c_sender|busy_sr\(0),
	datad => \controller|Inst_i2c_sender|busy_sr[0]~3_combout\,
	combout => \controller|Inst_i2c_sender|busy_sr[0]~7_combout\);

-- Location: LCFF_X53_Y18_N29
\controller|Inst_i2c_sender|busy_sr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|busy_sr[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|busy_sr\(0));

-- Location: LCCOMB_X55_Y18_N2
\controller|Inst_i2c_sender|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Mux2~0_combout\ = (\controller|Inst_i2c_sender|busy_sr\(1)) # ((\controller|Inst_i2c_sender|busy_sr\(0)) # ((\controller|Inst_i2c_sender|busy_sr\(30) & !\controller|Inst_i2c_sender|busy_sr\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(1),
	datab => \controller|Inst_i2c_sender|busy_sr\(30),
	datac => \controller|Inst_i2c_sender|busy_sr\(0),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y18_N20
\controller|Inst_i2c_sender|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Mux2~1_combout\ = (\controller|Inst_i2c_sender|busy_sr\(30) & (\controller|Inst_i2c_sender|busy_sr\(31) & ((\controller|Inst_i2c_sender|busy_sr\(1)) # (!\controller|Inst_i2c_sender|busy_sr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(1),
	datab => \controller|Inst_i2c_sender|busy_sr\(30),
	datac => \controller|Inst_i2c_sender|busy_sr\(0),
	datad => \controller|Inst_i2c_sender|busy_sr\(31),
	combout => \controller|Inst_i2c_sender|Mux2~1_combout\);

-- Location: LCCOMB_X55_Y18_N16
\controller|Inst_i2c_sender|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Mux2~3_combout\ = (!\controller|Inst_i2c_sender|Mux2~0_combout\ & (\controller|Inst_i2c_sender|Mux2~1_combout\ & (\controller|Inst_i2c_sender|busy_sr\(2) $ (!\controller|Inst_i2c_sender|busy_sr\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|busy_sr\(2),
	datab => \controller|Inst_i2c_sender|Mux2~0_combout\,
	datac => \controller|Inst_i2c_sender|Mux2~1_combout\,
	datad => \controller|Inst_i2c_sender|busy_sr\(29),
	combout => \controller|Inst_i2c_sender|Mux2~3_combout\);

-- Location: LCFF_X56_Y18_N17
\controller|Inst_i2c_sender|divider[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|Add0~12_combout\,
	ena => \controller|Inst_i2c_sender|divider[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|divider\(6));

-- Location: LCCOMB_X56_Y18_N24
\controller|Inst_i2c_sender|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|Mux2~4_combout\ = (\controller|Inst_i2c_sender|Mux2~2_combout\ & (!\controller|Inst_i2c_sender|Mux2~3_combout\ & (\controller|Inst_i2c_sender|divider\(6) $ (\controller|Inst_i2c_sender|divider\(7))))) # 
-- (!\controller|Inst_i2c_sender|Mux2~2_combout\ & (((\controller|Inst_i2c_sender|divider\(6)) # (\controller|Inst_i2c_sender|divider\(7))) # (!\controller|Inst_i2c_sender|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Inst_i2c_sender|Mux2~2_combout\,
	datab => \controller|Inst_i2c_sender|Mux2~3_combout\,
	datac => \controller|Inst_i2c_sender|divider\(6),
	datad => \controller|Inst_i2c_sender|divider\(7),
	combout => \controller|Inst_i2c_sender|Mux2~4_combout\);

-- Location: LCCOMB_X55_Y18_N24
\controller|Inst_i2c_sender|sioc~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Inst_i2c_sender|sioc~feeder_combout\ = \controller|Inst_i2c_sender|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Inst_i2c_sender|Mux2~4_combout\,
	combout => \controller|Inst_i2c_sender|sioc~feeder_combout\);

-- Location: LCFF_X55_Y18_N25
\controller|Inst_i2c_sender|sioc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|Inst_i2c_sender|sioc~feeder_combout\,
	sdata => VCC,
	sload => \controller|Inst_i2c_sender|ALT_INV_busy_sr\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Inst_i2c_sender|sioc~regout\);

-- Location: LCCOMB_X42_Y13_N0
\controller|sys_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|sys_clk~0_combout\ = !\controller|sys_clk~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|sys_clk~regout\,
	combout => \controller|sys_clk~0_combout\);

-- Location: LCFF_X42_Y13_N1
\controller|sys_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \controller|sys_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|sys_clk~regout\);

-- Location: LCCOMB_X47_Y15_N26
\Inst_vga|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add0~14_combout\ = (\Inst_vga|vCounter\(7) & (!\Inst_vga|Add0~13\)) # (!\Inst_vga|vCounter\(7) & ((\Inst_vga|Add0~13\) # (GND)))
-- \Inst_vga|Add0~15\ = CARRY((!\Inst_vga|Add0~13\) # (!\Inst_vga|vCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|vCounter\(7),
	datad => VCC,
	cin => \Inst_vga|Add0~13\,
	combout => \Inst_vga|Add0~14_combout\,
	cout => \Inst_vga|Add0~15\);

-- Location: LCCOMB_X47_Y15_N28
\Inst_vga|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add0~16_combout\ = (\Inst_vga|vCounter\(8) & (\Inst_vga|Add0~15\ $ (GND))) # (!\Inst_vga|vCounter\(8) & (!\Inst_vga|Add0~15\ & VCC))
-- \Inst_vga|Add0~17\ = CARRY((\Inst_vga|vCounter\(8) & !\Inst_vga|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|vCounter\(8),
	datad => VCC,
	cin => \Inst_vga|Add0~15\,
	combout => \Inst_vga|Add0~16_combout\,
	cout => \Inst_vga|Add0~17\);

-- Location: LCCOMB_X42_Y14_N6
\Inst_vga|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add1~0_combout\ = (\Inst_vga|hCounter\(1) & (\controller|sys_clk~regout\ $ (VCC))) # (!\Inst_vga|hCounter\(1) & (\controller|sys_clk~regout\ & VCC))
-- \Inst_vga|Add1~1\ = CARRY((\Inst_vga|hCounter\(1) & \controller|sys_clk~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(1),
	datab => \controller|sys_clk~regout\,
	datad => VCC,
	combout => \Inst_vga|Add1~0_combout\,
	cout => \Inst_vga|Add1~1\);

-- Location: LCCOMB_X42_Y14_N8
\Inst_vga|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add1~2_combout\ = (\Inst_vga|hCounter\(2) & (!\Inst_vga|Add1~1\)) # (!\Inst_vga|hCounter\(2) & ((\Inst_vga|Add1~1\) # (GND)))
-- \Inst_vga|Add1~3\ = CARRY((!\Inst_vga|Add1~1\) # (!\Inst_vga|hCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|hCounter\(2),
	datad => VCC,
	cin => \Inst_vga|Add1~1\,
	combout => \Inst_vga|Add1~2_combout\,
	cout => \Inst_vga|Add1~3\);

-- Location: LCFF_X42_Y14_N9
\Inst_vga|hCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|hCounter\(2));

-- Location: LCCOMB_X42_Y14_N10
\Inst_vga|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add1~4_combout\ = (\Inst_vga|hCounter\(3) & (\Inst_vga|Add1~3\ $ (GND))) # (!\Inst_vga|hCounter\(3) & (!\Inst_vga|Add1~3\ & VCC))
-- \Inst_vga|Add1~5\ = CARRY((\Inst_vga|hCounter\(3) & !\Inst_vga|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(3),
	datad => VCC,
	cin => \Inst_vga|Add1~3\,
	combout => \Inst_vga|Add1~4_combout\,
	cout => \Inst_vga|Add1~5\);

-- Location: LCCOMB_X42_Y14_N12
\Inst_vga|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add1~6_combout\ = (\Inst_vga|hCounter\(4) & (!\Inst_vga|Add1~5\)) # (!\Inst_vga|hCounter\(4) & ((\Inst_vga|Add1~5\) # (GND)))
-- \Inst_vga|Add1~7\ = CARRY((!\Inst_vga|Add1~5\) # (!\Inst_vga|hCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(4),
	datad => VCC,
	cin => \Inst_vga|Add1~5\,
	combout => \Inst_vga|Add1~6_combout\,
	cout => \Inst_vga|Add1~7\);

-- Location: LCCOMB_X42_Y14_N14
\Inst_vga|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add1~8_combout\ = (\Inst_vga|hCounter\(5) & (\Inst_vga|Add1~7\ $ (GND))) # (!\Inst_vga|hCounter\(5) & (!\Inst_vga|Add1~7\ & VCC))
-- \Inst_vga|Add1~9\ = CARRY((\Inst_vga|hCounter\(5) & !\Inst_vga|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|hCounter\(5),
	datad => VCC,
	cin => \Inst_vga|Add1~7\,
	combout => \Inst_vga|Add1~8_combout\,
	cout => \Inst_vga|Add1~9\);

-- Location: LCCOMB_X42_Y14_N20
\Inst_vga|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add1~14_combout\ = (\Inst_vga|hCounter\(8) & (!\Inst_vga|Add1~13\)) # (!\Inst_vga|hCounter\(8) & ((\Inst_vga|Add1~13\) # (GND)))
-- \Inst_vga|Add1~15\ = CARRY((!\Inst_vga|Add1~13\) # (!\Inst_vga|hCounter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(8),
	datad => VCC,
	cin => \Inst_vga|Add1~13\,
	combout => \Inst_vga|Add1~14_combout\,
	cout => \Inst_vga|Add1~15\);

-- Location: LCFF_X42_Y14_N21
\Inst_vga|hCounter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|hCounter\(8));

-- Location: LCFF_X42_Y14_N11
\Inst_vga|hCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|hCounter\(3));

-- Location: LCCOMB_X42_Y14_N0
\Inst_vga|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal0~0_combout\ = (\Inst_vga|hCounter\(1) & (!\Inst_vga|hCounter\(5) & (\Inst_vga|hCounter\(2) & \Inst_vga|hCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(1),
	datab => \Inst_vga|hCounter\(5),
	datac => \Inst_vga|hCounter\(2),
	datad => \Inst_vga|hCounter\(3),
	combout => \Inst_vga|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y14_N2
\Inst_vga|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal0~1_combout\ = (\controller|sys_clk~regout\ & (!\Inst_vga|hCounter\(8) & \Inst_vga|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|sys_clk~regout\,
	datac => \Inst_vga|hCounter\(8),
	datad => \Inst_vga|Equal0~0_combout\,
	combout => \Inst_vga|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y14_N30
\Inst_vga|hCounter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|hCounter~1_combout\ = (\Inst_vga|Add1~8_combout\ & (((!\Inst_vga|Equal0~1_combout\) # (!\Inst_vga|Equal0~2_combout\)) # (!\Inst_vga|hCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(10),
	datab => \Inst_vga|Equal0~2_combout\,
	datac => \Inst_vga|Add1~8_combout\,
	datad => \Inst_vga|Equal0~1_combout\,
	combout => \Inst_vga|hCounter~1_combout\);

-- Location: LCFF_X42_Y14_N31
\Inst_vga|hCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|hCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|hCounter\(5));

-- Location: LCCOMB_X42_Y14_N16
\Inst_vga|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add1~10_combout\ = (\Inst_vga|hCounter\(6) & (!\Inst_vga|Add1~9\)) # (!\Inst_vga|hCounter\(6) & ((\Inst_vga|Add1~9\) # (GND)))
-- \Inst_vga|Add1~11\ = CARRY((!\Inst_vga|Add1~9\) # (!\Inst_vga|hCounter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(6),
	datad => VCC,
	cin => \Inst_vga|Add1~9\,
	combout => \Inst_vga|Add1~10_combout\,
	cout => \Inst_vga|Add1~11\);

-- Location: LCCOMB_X42_Y14_N18
\Inst_vga|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add1~12_combout\ = (\Inst_vga|hCounter\(7) & (\Inst_vga|Add1~11\ $ (GND))) # (!\Inst_vga|hCounter\(7) & (!\Inst_vga|Add1~11\ & VCC))
-- \Inst_vga|Add1~13\ = CARRY((\Inst_vga|hCounter\(7) & !\Inst_vga|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|hCounter\(7),
	datad => VCC,
	cin => \Inst_vga|Add1~11\,
	combout => \Inst_vga|Add1~12_combout\,
	cout => \Inst_vga|Add1~13\);

-- Location: LCFF_X42_Y14_N19
\Inst_vga|hCounter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|hCounter\(7));

-- Location: LCFF_X42_Y14_N23
\Inst_vga|hCounter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|hCounter\(9));

-- Location: LCFF_X42_Y14_N17
\Inst_vga|hCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|hCounter\(6));

-- Location: LCCOMB_X42_Y14_N28
\Inst_vga|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal0~2_combout\ = (\Inst_vga|hCounter\(4) & (!\Inst_vga|hCounter\(9) & (!\Inst_vga|hCounter\(6) & !\Inst_vga|hCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(4),
	datab => \Inst_vga|hCounter\(9),
	datac => \Inst_vga|hCounter\(6),
	datad => \Inst_vga|hCounter\(7),
	combout => \Inst_vga|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y14_N4
\Inst_vga|hCounter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|hCounter~0_combout\ = (\Inst_vga|Add1~18_combout\ & (((!\Inst_vga|Equal0~1_combout\) # (!\Inst_vga|hCounter\(10))) # (!\Inst_vga|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add1~18_combout\,
	datab => \Inst_vga|Equal0~2_combout\,
	datac => \Inst_vga|hCounter\(10),
	datad => \Inst_vga|Equal0~1_combout\,
	combout => \Inst_vga|hCounter~0_combout\);

-- Location: LCFF_X42_Y14_N5
\Inst_vga|hCounter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|hCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|hCounter\(10));

-- Location: LCCOMB_X42_Y14_N26
\Inst_vga|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal0~3_combout\ = (\Inst_vga|Equal0~2_combout\ & (\Inst_vga|hCounter\(10) & \Inst_vga|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|Equal0~2_combout\,
	datac => \Inst_vga|hCounter\(10),
	datad => \Inst_vga|Equal0~1_combout\,
	combout => \Inst_vga|Equal0~3_combout\);

-- Location: LCFF_X47_Y15_N29
\Inst_vga|vCounter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|Add0~16_combout\,
	ena => \Inst_vga|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vCounter\(8));

-- Location: LCCOMB_X47_Y15_N30
\Inst_vga|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add0~18_combout\ = \Inst_vga|vCounter\(9) $ (\Inst_vga|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(9),
	cin => \Inst_vga|Add0~17\,
	combout => \Inst_vga|Add0~18_combout\);

-- Location: LCCOMB_X46_Y15_N30
\Inst_vga|vCounter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vCounter~0_combout\ = (!\Inst_vga|Equal1~1_combout\ & \Inst_vga|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|Equal1~1_combout\,
	datad => \Inst_vga|Add0~18_combout\,
	combout => \Inst_vga|vCounter~0_combout\);

-- Location: LCFF_X46_Y15_N31
\Inst_vga|vCounter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|vCounter~0_combout\,
	ena => \Inst_vga|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vCounter\(9));

-- Location: LCCOMB_X47_Y15_N12
\Inst_vga|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add0~0_combout\ = \Inst_vga|vCounter\(0) $ (VCC)
-- \Inst_vga|Add0~1\ = CARRY(\Inst_vga|vCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|vCounter\(0),
	datad => VCC,
	combout => \Inst_vga|Add0~0_combout\,
	cout => \Inst_vga|Add0~1\);

-- Location: LCFF_X46_Y15_N5
\Inst_vga|vCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|Add0~0_combout\,
	sload => VCC,
	ena => \Inst_vga|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vCounter\(0));

-- Location: LCCOMB_X47_Y15_N6
\Inst_vga|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|process_0~1_combout\ = (\Inst_vga|vCounter\(4) & (!\Inst_vga|vCounter\(7) & (\Inst_vga|vCounter\(6) & !\Inst_vga|vCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(4),
	datab => \Inst_vga|vCounter\(7),
	datac => \Inst_vga|vCounter\(6),
	datad => \Inst_vga|vCounter\(8),
	combout => \Inst_vga|process_0~1_combout\);

-- Location: LCCOMB_X46_Y15_N4
\Inst_vga|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal1~1_combout\ = (\Inst_vga|Equal1~0_combout\ & (\Inst_vga|vCounter\(9) & (\Inst_vga|vCounter\(0) & \Inst_vga|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal1~0_combout\,
	datab => \Inst_vga|vCounter\(9),
	datac => \Inst_vga|vCounter\(0),
	datad => \Inst_vga|process_0~1_combout\,
	combout => \Inst_vga|Equal1~1_combout\);

-- Location: LCCOMB_X47_Y15_N14
\Inst_vga|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add0~2_combout\ = (\Inst_vga|vCounter\(1) & (!\Inst_vga|Add0~1\)) # (!\Inst_vga|vCounter\(1) & ((\Inst_vga|Add0~1\) # (GND)))
-- \Inst_vga|Add0~3\ = CARRY((!\Inst_vga|Add0~1\) # (!\Inst_vga|vCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|vCounter\(1),
	datad => VCC,
	cin => \Inst_vga|Add0~1\,
	combout => \Inst_vga|Add0~2_combout\,
	cout => \Inst_vga|Add0~3\);

-- Location: LCFF_X47_Y15_N15
\Inst_vga|vCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|Add0~2_combout\,
	ena => \Inst_vga|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vCounter\(1));

-- Location: LCCOMB_X47_Y15_N16
\Inst_vga|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add0~4_combout\ = (\Inst_vga|vCounter\(2) & (\Inst_vga|Add0~3\ $ (GND))) # (!\Inst_vga|vCounter\(2) & (!\Inst_vga|Add0~3\ & VCC))
-- \Inst_vga|Add0~5\ = CARRY((\Inst_vga|vCounter\(2) & !\Inst_vga|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|vCounter\(2),
	datad => VCC,
	cin => \Inst_vga|Add0~3\,
	combout => \Inst_vga|Add0~4_combout\,
	cout => \Inst_vga|Add0~5\);

-- Location: LCCOMB_X46_Y15_N2
\Inst_vga|vCounter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vCounter~1_combout\ = (!\Inst_vga|Equal1~1_combout\ & \Inst_vga|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|Equal1~1_combout\,
	datac => \Inst_vga|Add0~4_combout\,
	combout => \Inst_vga|vCounter~1_combout\);

-- Location: LCFF_X46_Y15_N3
\Inst_vga|vCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|vCounter~1_combout\,
	ena => \Inst_vga|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vCounter\(2));

-- Location: LCCOMB_X47_Y15_N18
\Inst_vga|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add0~6_combout\ = (\Inst_vga|vCounter\(3) & (!\Inst_vga|Add0~5\)) # (!\Inst_vga|vCounter\(3) & ((\Inst_vga|Add0~5\) # (GND)))
-- \Inst_vga|Add0~7\ = CARRY((!\Inst_vga|Add0~5\) # (!\Inst_vga|vCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|vCounter\(3),
	datad => VCC,
	cin => \Inst_vga|Add0~5\,
	combout => \Inst_vga|Add0~6_combout\,
	cout => \Inst_vga|Add0~7\);

-- Location: LCFF_X47_Y15_N19
\Inst_vga|vCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|Add0~6_combout\,
	ena => \Inst_vga|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vCounter\(3));

-- Location: LCCOMB_X47_Y15_N20
\Inst_vga|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add0~8_combout\ = (\Inst_vga|vCounter\(4) & (\Inst_vga|Add0~7\ $ (GND))) # (!\Inst_vga|vCounter\(4) & (!\Inst_vga|Add0~7\ & VCC))
-- \Inst_vga|Add0~9\ = CARRY((\Inst_vga|vCounter\(4) & !\Inst_vga|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(4),
	datad => VCC,
	cin => \Inst_vga|Add0~7\,
	combout => \Inst_vga|Add0~8_combout\,
	cout => \Inst_vga|Add0~9\);

-- Location: LCCOMB_X47_Y15_N22
\Inst_vga|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add0~10_combout\ = (\Inst_vga|vCounter\(5) & (!\Inst_vga|Add0~9\)) # (!\Inst_vga|vCounter\(5) & ((\Inst_vga|Add0~9\) # (GND)))
-- \Inst_vga|Add0~11\ = CARRY((!\Inst_vga|Add0~9\) # (!\Inst_vga|vCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|vCounter\(5),
	datad => VCC,
	cin => \Inst_vga|Add0~9\,
	combout => \Inst_vga|Add0~10_combout\,
	cout => \Inst_vga|Add0~11\);

-- Location: LCCOMB_X46_Y15_N28
\Inst_vga|vCounter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vCounter~3_combout\ = (!\Inst_vga|Equal1~1_combout\ & \Inst_vga|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|Equal1~1_combout\,
	datad => \Inst_vga|Add0~10_combout\,
	combout => \Inst_vga|vCounter~3_combout\);

-- Location: LCFF_X46_Y15_N29
\Inst_vga|vCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|vCounter~3_combout\,
	ena => \Inst_vga|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vCounter\(5));

-- Location: LCCOMB_X47_Y15_N24
\Inst_vga|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add0~12_combout\ = (\Inst_vga|vCounter\(6) & (\Inst_vga|Add0~11\ $ (GND))) # (!\Inst_vga|vCounter\(6) & (!\Inst_vga|Add0~11\ & VCC))
-- \Inst_vga|Add0~13\ = CARRY((\Inst_vga|vCounter\(6) & !\Inst_vga|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|vCounter\(6),
	datad => VCC,
	cin => \Inst_vga|Add0~11\,
	combout => \Inst_vga|Add0~12_combout\,
	cout => \Inst_vga|Add0~13\);

-- Location: LCCOMB_X45_Y15_N6
\Inst_vga|vCounter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vCounter~4_combout\ = (!\Inst_vga|Equal1~1_combout\ & \Inst_vga|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal1~1_combout\,
	datad => \Inst_vga|Add0~12_combout\,
	combout => \Inst_vga|vCounter~4_combout\);

-- Location: LCFF_X45_Y15_N7
\Inst_vga|vCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|vCounter~4_combout\,
	ena => \Inst_vga|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vCounter\(6));

-- Location: LCFF_X47_Y15_N27
\Inst_vga|vCounter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|Add0~14_combout\,
	ena => \Inst_vga|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vCounter\(7));

-- Location: LCFF_X45_Y15_N29
\Inst_vga|iMax[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|vCounter\(9),
	sload => VCC,
	ena => \Inst_vga|iMax[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMax\(9));

-- Location: LCFF_X45_Y15_N3
\Inst_vga|iMax[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|vCounter\(6),
	sload => VCC,
	ena => \Inst_vga|iMax[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMax\(6));

-- Location: LCCOMB_X46_Y15_N0
\Inst_vga|vCounter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vCounter~2_combout\ = (!\Inst_vga|Equal1~1_combout\ & \Inst_vga|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|Equal1~1_combout\,
	datad => \Inst_vga|Add0~8_combout\,
	combout => \Inst_vga|vCounter~2_combout\);

-- Location: LCFF_X46_Y15_N1
\Inst_vga|vCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|vCounter~2_combout\,
	ena => \Inst_vga|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vCounter\(4));

-- Location: LCFF_X45_Y15_N1
\Inst_vga|iMax[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|vCounter\(4),
	sload => VCC,
	ena => \Inst_vga|iMax[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMax\(4));

-- Location: LCFF_X45_Y15_N13
\Inst_vga|iMax[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|vCounter\(3),
	sload => VCC,
	ena => \Inst_vga|iMax[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMax\(3));

-- Location: LCFF_X46_Y15_N7
\Inst_vga|iMax[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|vCounter\(0),
	sload => VCC,
	ena => \Inst_vga|iMax[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMax\(0));

-- Location: LCCOMB_X45_Y14_N10
\Inst_vga|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan1~1_cout\ = CARRY((\Inst_vga|vCounter\(0) & !\Inst_vga|iMax\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(0),
	datab => \Inst_vga|iMax\(0),
	datad => VCC,
	cout => \Inst_vga|LessThan1~1_cout\);

-- Location: LCCOMB_X45_Y14_N12
\Inst_vga|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan1~3_cout\ = CARRY((\Inst_vga|iMax\(1) & ((!\Inst_vga|LessThan1~1_cout\) # (!\Inst_vga|vCounter\(1)))) # (!\Inst_vga|iMax\(1) & (!\Inst_vga|vCounter\(1) & !\Inst_vga|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(1),
	datab => \Inst_vga|vCounter\(1),
	datad => VCC,
	cin => \Inst_vga|LessThan1~1_cout\,
	cout => \Inst_vga|LessThan1~3_cout\);

-- Location: LCCOMB_X45_Y14_N14
\Inst_vga|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan1~5_cout\ = CARRY((\Inst_vga|iMax\(2) & (\Inst_vga|vCounter\(2) & !\Inst_vga|LessThan1~3_cout\)) # (!\Inst_vga|iMax\(2) & ((\Inst_vga|vCounter\(2)) # (!\Inst_vga|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(2),
	datab => \Inst_vga|vCounter\(2),
	datad => VCC,
	cin => \Inst_vga|LessThan1~3_cout\,
	cout => \Inst_vga|LessThan1~5_cout\);

-- Location: LCCOMB_X45_Y14_N16
\Inst_vga|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan1~7_cout\ = CARRY((\Inst_vga|vCounter\(3) & (\Inst_vga|iMax\(3) & !\Inst_vga|LessThan1~5_cout\)) # (!\Inst_vga|vCounter\(3) & ((\Inst_vga|iMax\(3)) # (!\Inst_vga|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(3),
	datab => \Inst_vga|iMax\(3),
	datad => VCC,
	cin => \Inst_vga|LessThan1~5_cout\,
	cout => \Inst_vga|LessThan1~7_cout\);

-- Location: LCCOMB_X45_Y14_N18
\Inst_vga|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan1~9_cout\ = CARRY((\Inst_vga|vCounter\(4) & ((!\Inst_vga|LessThan1~7_cout\) # (!\Inst_vga|iMax\(4)))) # (!\Inst_vga|vCounter\(4) & (!\Inst_vga|iMax\(4) & !\Inst_vga|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(4),
	datab => \Inst_vga|iMax\(4),
	datad => VCC,
	cin => \Inst_vga|LessThan1~7_cout\,
	cout => \Inst_vga|LessThan1~9_cout\);

-- Location: LCCOMB_X45_Y14_N20
\Inst_vga|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan1~11_cout\ = CARRY((\Inst_vga|iMax\(5) & ((!\Inst_vga|LessThan1~9_cout\) # (!\Inst_vga|vCounter\(5)))) # (!\Inst_vga|iMax\(5) & (!\Inst_vga|vCounter\(5) & !\Inst_vga|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(5),
	datab => \Inst_vga|vCounter\(5),
	datad => VCC,
	cin => \Inst_vga|LessThan1~9_cout\,
	cout => \Inst_vga|LessThan1~11_cout\);

-- Location: LCCOMB_X45_Y14_N22
\Inst_vga|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan1~13_cout\ = CARRY((\Inst_vga|vCounter\(6) & ((!\Inst_vga|LessThan1~11_cout\) # (!\Inst_vga|iMax\(6)))) # (!\Inst_vga|vCounter\(6) & (!\Inst_vga|iMax\(6) & !\Inst_vga|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(6),
	datab => \Inst_vga|iMax\(6),
	datad => VCC,
	cin => \Inst_vga|LessThan1~11_cout\,
	cout => \Inst_vga|LessThan1~13_cout\);

-- Location: LCCOMB_X45_Y14_N24
\Inst_vga|LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan1~15_cout\ = CARRY((\Inst_vga|vCounter\(7) & (\Inst_vga|iMax\(7) & !\Inst_vga|LessThan1~13_cout\)) # (!\Inst_vga|vCounter\(7) & ((\Inst_vga|iMax\(7)) # (!\Inst_vga|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(7),
	datab => \Inst_vga|iMax\(7),
	datad => VCC,
	cin => \Inst_vga|LessThan1~13_cout\,
	cout => \Inst_vga|LessThan1~15_cout\);

-- Location: LCCOMB_X45_Y14_N26
\Inst_vga|LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan1~17_cout\ = CARRY((\Inst_vga|iMax\(8) & (\Inst_vga|vCounter\(8) & !\Inst_vga|LessThan1~15_cout\)) # (!\Inst_vga|iMax\(8) & ((\Inst_vga|vCounter\(8)) # (!\Inst_vga|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(8),
	datab => \Inst_vga|vCounter\(8),
	datad => VCC,
	cin => \Inst_vga|LessThan1~15_cout\,
	cout => \Inst_vga|LessThan1~17_cout\);

-- Location: LCCOMB_X45_Y14_N28
\Inst_vga|LessThan1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan1~18_combout\ = (\Inst_vga|vCounter\(9) & ((\Inst_vga|LessThan1~17_cout\) # (!\Inst_vga|iMax\(9)))) # (!\Inst_vga|vCounter\(9) & (\Inst_vga|LessThan1~17_cout\ & !\Inst_vga|iMax\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|vCounter\(9),
	datad => \Inst_vga|iMax\(9),
	cin => \Inst_vga|LessThan1~17_cout\,
	combout => \Inst_vga|LessThan1~18_combout\);

-- Location: LCCOMB_X44_Y15_N30
\Inst_vga|LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan10~0_combout\ = ((!\Inst_vga|vCounter\(5) & ((!\Inst_vga|vCounter\(3)) # (!\Inst_vga|vCounter\(4))))) # (!\Inst_vga|vCounter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(6),
	datab => \Inst_vga|vCounter\(4),
	datac => \Inst_vga|vCounter\(5),
	datad => \Inst_vga|vCounter\(3),
	combout => \Inst_vga|LessThan10~0_combout\);

-- Location: LCCOMB_X44_Y15_N0
\Inst_vga|LessThan10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan10~1_combout\ = (\Inst_vga|vCounter\(9) & ((\Inst_vga|vCounter\(7)) # ((\Inst_vga|vCounter\(8)) # (!\Inst_vga|LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(7),
	datab => \Inst_vga|LessThan10~0_combout\,
	datac => \Inst_vga|vCounter\(8),
	datad => \Inst_vga|vCounter\(9),
	combout => \Inst_vga|LessThan10~1_combout\);

-- Location: LCFF_X42_Y14_N13
\Inst_vga|hCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|hCounter\(4));

-- Location: LCCOMB_X44_Y14_N0
\Inst_vga|LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan11~0_combout\ = (!\Inst_vga|hCounter\(4) & !\Inst_vga|hCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|hCounter\(4),
	datac => \Inst_vga|hCounter\(5),
	combout => \Inst_vga|LessThan11~0_combout\);

-- Location: LCCOMB_X44_Y14_N2
\Inst_vga|process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|process_0~6_combout\ = (\Inst_vga|hCounter\(9) & (\Inst_vga|hCounter\(6) & (\Inst_vga|hCounter\(7) & !\Inst_vga|LessThan11~0_combout\))) # (!\Inst_vga|hCounter\(9) & (!\Inst_vga|hCounter\(7) & ((\Inst_vga|LessThan11~0_combout\) # 
-- (!\Inst_vga|hCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(9),
	datab => \Inst_vga|hCounter\(6),
	datac => \Inst_vga|hCounter\(7),
	datad => \Inst_vga|LessThan11~0_combout\,
	combout => \Inst_vga|process_0~6_combout\);

-- Location: LCCOMB_X44_Y14_N4
\Inst_vga|blank~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|blank~0_combout\ = (!\Inst_vga|hCounter\(10) & ((\Inst_vga|hCounter\(8) & (!\Inst_vga|hCounter\(9))) # (!\Inst_vga|hCounter\(8) & ((!\Inst_vga|process_0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(10),
	datab => \Inst_vga|hCounter\(8),
	datac => \Inst_vga|hCounter\(9),
	datad => \Inst_vga|process_0~6_combout\,
	combout => \Inst_vga|blank~0_combout\);

-- Location: LCCOMB_X44_Y15_N28
\Inst_vga|blank~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|blank~1_combout\ = (!\Inst_vga|LessThan10~1_combout\ & \Inst_vga|blank~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|LessThan10~1_combout\,
	datad => \Inst_vga|blank~0_combout\,
	combout => \Inst_vga|blank~1_combout\);

-- Location: LCFF_X44_Y15_N29
\Inst_vga|blank\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|blank~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|blank~regout\);

-- Location: LCCOMB_X44_Y13_N16
\Inst_vga|address[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[0]~17_combout\ = \Inst_vga|address\(0) $ (VCC)
-- \Inst_vga|address[0]~18\ = CARRY(\Inst_vga|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(0),
	datad => VCC,
	combout => \Inst_vga|address[0]~17_combout\,
	cout => \Inst_vga|address[0]~18\);

-- Location: LCCOMB_X43_Y13_N16
\Inst_vga|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~0_combout\ = \Inst_vga|address\(0) $ (VCC)
-- \Inst_vga|Add7~1\ = CARRY(\Inst_vga|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(0),
	datad => VCC,
	combout => \Inst_vga|Add7~0_combout\,
	cout => \Inst_vga|Add7~1\);

-- Location: LCCOMB_X44_Y14_N8
\Inst_vga|address[5]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[5]~50_combout\ = (\Inst_vga|hCounter\(10)) # ((\Inst_vga|hCounter\(4)) # (!\Inst_vga|hCounter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(10),
	datab => \Inst_vga|hCounter\(4),
	datad => \Inst_vga|hCounter\(6),
	combout => \Inst_vga|address[5]~50_combout\);

-- Location: LCCOMB_X44_Y14_N30
\Inst_vga|address[5]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[5]~49_combout\ = (((\Inst_vga|vCounter\(0) & \Inst_vga|vCounter\(1))) # (!\Inst_vga|hCounter\(7))) # (!\Inst_vga|hCounter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(9),
	datab => \Inst_vga|hCounter\(7),
	datac => \Inst_vga|vCounter\(0),
	datad => \Inst_vga|vCounter\(1),
	combout => \Inst_vga|address[5]~49_combout\);

-- Location: LCCOMB_X43_Y14_N16
\Inst_vga|address[5]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[5]~51_combout\ = ((\Inst_vga|address[5]~50_combout\) # (\Inst_vga|address[5]~49_combout\)) # (!\Inst_vga|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal0~1_combout\,
	datac => \Inst_vga|address[5]~50_combout\,
	datad => \Inst_vga|address[5]~49_combout\,
	combout => \Inst_vga|address[5]~51_combout\);

-- Location: LCCOMB_X44_Y13_N12
\Inst_vga|address[5]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[5]~52_combout\ = (\Inst_vga|blank~0_combout\) # (\Inst_vga|LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|blank~0_combout\,
	datad => \Inst_vga|LessThan10~1_combout\,
	combout => \Inst_vga|address[5]~52_combout\);

-- Location: LCFF_X44_Y13_N17
\Inst_vga|address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[0]~17_combout\,
	sdata => \Inst_vga|Add7~0_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(0));

-- Location: LCCOMB_X44_Y13_N18
\Inst_vga|address[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[1]~19_combout\ = (\Inst_vga|address\(1) & (!\Inst_vga|address[0]~18\)) # (!\Inst_vga|address\(1) & ((\Inst_vga|address[0]~18\) # (GND)))
-- \Inst_vga|address[1]~20\ = CARRY((!\Inst_vga|address[0]~18\) # (!\Inst_vga|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(1),
	datad => VCC,
	cin => \Inst_vga|address[0]~18\,
	combout => \Inst_vga|address[1]~19_combout\,
	cout => \Inst_vga|address[1]~20\);

-- Location: LCCOMB_X43_Y13_N18
\Inst_vga|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~2_combout\ = (\Inst_vga|address\(1) & (!\Inst_vga|Add7~1\)) # (!\Inst_vga|address\(1) & ((\Inst_vga|Add7~1\) # (GND)))
-- \Inst_vga|Add7~3\ = CARRY((!\Inst_vga|Add7~1\) # (!\Inst_vga|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(1),
	datad => VCC,
	cin => \Inst_vga|Add7~1\,
	combout => \Inst_vga|Add7~2_combout\,
	cout => \Inst_vga|Add7~3\);

-- Location: LCFF_X44_Y13_N19
\Inst_vga|address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[1]~19_combout\,
	sdata => \Inst_vga|Add7~2_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(1));

-- Location: LCCOMB_X44_Y13_N20
\Inst_vga|address[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[2]~21_combout\ = (\Inst_vga|address\(2) & (\Inst_vga|address[1]~20\ $ (GND))) # (!\Inst_vga|address\(2) & (!\Inst_vga|address[1]~20\ & VCC))
-- \Inst_vga|address[2]~22\ = CARRY((\Inst_vga|address\(2) & !\Inst_vga|address[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(2),
	datad => VCC,
	cin => \Inst_vga|address[1]~20\,
	combout => \Inst_vga|address[2]~21_combout\,
	cout => \Inst_vga|address[2]~22\);

-- Location: LCCOMB_X44_Y13_N22
\Inst_vga|address[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[3]~23_combout\ = (\Inst_vga|address\(3) & (!\Inst_vga|address[2]~22\)) # (!\Inst_vga|address\(3) & ((\Inst_vga|address[2]~22\) # (GND)))
-- \Inst_vga|address[3]~24\ = CARRY((!\Inst_vga|address[2]~22\) # (!\Inst_vga|address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(3),
	datad => VCC,
	cin => \Inst_vga|address[2]~22\,
	combout => \Inst_vga|address[3]~23_combout\,
	cout => \Inst_vga|address[3]~24\);

-- Location: LCCOMB_X43_Y13_N20
\Inst_vga|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~4_combout\ = (\Inst_vga|address\(2) & (\Inst_vga|Add7~3\ $ (GND))) # (!\Inst_vga|address\(2) & (!\Inst_vga|Add7~3\ & VCC))
-- \Inst_vga|Add7~5\ = CARRY((\Inst_vga|address\(2) & !\Inst_vga|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(2),
	datad => VCC,
	cin => \Inst_vga|Add7~3\,
	combout => \Inst_vga|Add7~4_combout\,
	cout => \Inst_vga|Add7~5\);

-- Location: LCFF_X44_Y13_N21
\Inst_vga|address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[2]~21_combout\,
	sdata => \Inst_vga|Add7~4_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(2));

-- Location: LCCOMB_X43_Y13_N22
\Inst_vga|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~6_combout\ = (\Inst_vga|address\(3) & (!\Inst_vga|Add7~5\)) # (!\Inst_vga|address\(3) & ((\Inst_vga|Add7~5\) # (GND)))
-- \Inst_vga|Add7~7\ = CARRY((!\Inst_vga|Add7~5\) # (!\Inst_vga|address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(3),
	datad => VCC,
	cin => \Inst_vga|Add7~5\,
	combout => \Inst_vga|Add7~6_combout\,
	cout => \Inst_vga|Add7~7\);

-- Location: LCFF_X44_Y13_N23
\Inst_vga|address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[3]~23_combout\,
	sdata => \Inst_vga|Add7~6_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(3));

-- Location: LCCOMB_X44_Y13_N24
\Inst_vga|address[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[4]~25_combout\ = (\Inst_vga|address\(4) & (\Inst_vga|address[3]~24\ $ (GND))) # (!\Inst_vga|address\(4) & (!\Inst_vga|address[3]~24\ & VCC))
-- \Inst_vga|address[4]~26\ = CARRY((\Inst_vga|address\(4) & !\Inst_vga|address[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(4),
	datad => VCC,
	cin => \Inst_vga|address[3]~24\,
	combout => \Inst_vga|address[4]~25_combout\,
	cout => \Inst_vga|address[4]~26\);

-- Location: LCCOMB_X44_Y13_N26
\Inst_vga|address[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[5]~27_combout\ = (\Inst_vga|address\(5) & (!\Inst_vga|address[4]~26\)) # (!\Inst_vga|address\(5) & ((\Inst_vga|address[4]~26\) # (GND)))
-- \Inst_vga|address[5]~28\ = CARRY((!\Inst_vga|address[4]~26\) # (!\Inst_vga|address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(5),
	datad => VCC,
	cin => \Inst_vga|address[4]~26\,
	combout => \Inst_vga|address[5]~27_combout\,
	cout => \Inst_vga|address[5]~28\);

-- Location: LCCOMB_X43_Y13_N24
\Inst_vga|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~8_combout\ = (\Inst_vga|address\(4) & (\Inst_vga|Add7~7\ $ (GND))) # (!\Inst_vga|address\(4) & (!\Inst_vga|Add7~7\ & VCC))
-- \Inst_vga|Add7~9\ = CARRY((\Inst_vga|address\(4) & !\Inst_vga|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(4),
	datad => VCC,
	cin => \Inst_vga|Add7~7\,
	combout => \Inst_vga|Add7~8_combout\,
	cout => \Inst_vga|Add7~9\);

-- Location: LCFF_X44_Y13_N25
\Inst_vga|address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[4]~25_combout\,
	sdata => \Inst_vga|Add7~8_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(4));

-- Location: LCCOMB_X43_Y13_N26
\Inst_vga|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~10_combout\ = (\Inst_vga|address\(5) & (!\Inst_vga|Add7~9\)) # (!\Inst_vga|address\(5) & ((\Inst_vga|Add7~9\) # (GND)))
-- \Inst_vga|Add7~11\ = CARRY((!\Inst_vga|Add7~9\) # (!\Inst_vga|address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(5),
	datad => VCC,
	cin => \Inst_vga|Add7~9\,
	combout => \Inst_vga|Add7~10_combout\,
	cout => \Inst_vga|Add7~11\);

-- Location: LCFF_X44_Y13_N27
\Inst_vga|address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[5]~27_combout\,
	sdata => \Inst_vga|Add7~10_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(5));

-- Location: LCCOMB_X44_Y13_N28
\Inst_vga|address[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[6]~29_combout\ = (\Inst_vga|address\(6) & (\Inst_vga|address[5]~28\ $ (GND))) # (!\Inst_vga|address\(6) & (!\Inst_vga|address[5]~28\ & VCC))
-- \Inst_vga|address[6]~30\ = CARRY((\Inst_vga|address\(6) & !\Inst_vga|address[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(6),
	datad => VCC,
	cin => \Inst_vga|address[5]~28\,
	combout => \Inst_vga|address[6]~29_combout\,
	cout => \Inst_vga|address[6]~30\);

-- Location: LCCOMB_X43_Y13_N28
\Inst_vga|Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~12_combout\ = (\Inst_vga|address\(6) & (\Inst_vga|Add7~11\ $ (GND))) # (!\Inst_vga|address\(6) & (!\Inst_vga|Add7~11\ & VCC))
-- \Inst_vga|Add7~13\ = CARRY((\Inst_vga|address\(6) & !\Inst_vga|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(6),
	datad => VCC,
	cin => \Inst_vga|Add7~11\,
	combout => \Inst_vga|Add7~12_combout\,
	cout => \Inst_vga|Add7~13\);

-- Location: LCFF_X44_Y13_N29
\Inst_vga|address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[6]~29_combout\,
	sdata => \Inst_vga|Add7~12_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(6));

-- Location: LCCOMB_X44_Y13_N30
\Inst_vga|address[7]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[7]~31_combout\ = (\Inst_vga|address\(7) & (\Inst_vga|address[6]~30\ & VCC)) # (!\Inst_vga|address\(7) & (!\Inst_vga|address[6]~30\))
-- \Inst_vga|address[7]~32\ = CARRY((!\Inst_vga|address\(7) & !\Inst_vga|address[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(7),
	datad => VCC,
	cin => \Inst_vga|address[6]~30\,
	combout => \Inst_vga|address[7]~31_combout\,
	cout => \Inst_vga|address[7]~32\);

-- Location: LCCOMB_X43_Y13_N30
\Inst_vga|Add7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~14_combout\ = (\Inst_vga|address\(7) & (!\Inst_vga|Add7~13\)) # (!\Inst_vga|address\(7) & ((\Inst_vga|Add7~13\) # (GND)))
-- \Inst_vga|Add7~15\ = CARRY((!\Inst_vga|Add7~13\) # (!\Inst_vga|address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(7),
	datad => VCC,
	cin => \Inst_vga|Add7~13\,
	combout => \Inst_vga|Add7~14_combout\,
	cout => \Inst_vga|Add7~15\);

-- Location: LCFF_X44_Y13_N31
\Inst_vga|address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[7]~31_combout\,
	sdata => \Inst_vga|Add7~14_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(7));

-- Location: LCCOMB_X44_Y12_N0
\Inst_vga|address[8]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[8]~33_combout\ = (\Inst_vga|address\(8) & ((GND) # (!\Inst_vga|address[7]~32\))) # (!\Inst_vga|address\(8) & (\Inst_vga|address[7]~32\ $ (GND)))
-- \Inst_vga|address[8]~34\ = CARRY((\Inst_vga|address\(8)) # (!\Inst_vga|address[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(8),
	datad => VCC,
	cin => \Inst_vga|address[7]~32\,
	combout => \Inst_vga|address[8]~33_combout\,
	cout => \Inst_vga|address[8]~34\);

-- Location: LCCOMB_X43_Y12_N0
\Inst_vga|Add7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~16_combout\ = (\Inst_vga|address\(8) & (\Inst_vga|Add7~15\ $ (GND))) # (!\Inst_vga|address\(8) & (!\Inst_vga|Add7~15\ & VCC))
-- \Inst_vga|Add7~17\ = CARRY((\Inst_vga|address\(8) & !\Inst_vga|Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(8),
	datad => VCC,
	cin => \Inst_vga|Add7~15\,
	combout => \Inst_vga|Add7~16_combout\,
	cout => \Inst_vga|Add7~17\);

-- Location: LCFF_X44_Y12_N1
\Inst_vga|address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[8]~33_combout\,
	sdata => \Inst_vga|Add7~16_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(8));

-- Location: LCCOMB_X44_Y12_N2
\Inst_vga|address[9]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[9]~35_combout\ = (\Inst_vga|address\(9) & (!\Inst_vga|address[8]~34\)) # (!\Inst_vga|address\(9) & ((\Inst_vga|address[8]~34\) # (GND)))
-- \Inst_vga|address[9]~36\ = CARRY((!\Inst_vga|address[8]~34\) # (!\Inst_vga|address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(9),
	datad => VCC,
	cin => \Inst_vga|address[8]~34\,
	combout => \Inst_vga|address[9]~35_combout\,
	cout => \Inst_vga|address[9]~36\);

-- Location: LCCOMB_X43_Y12_N2
\Inst_vga|Add7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~18_combout\ = (\Inst_vga|address\(9) & (!\Inst_vga|Add7~17\)) # (!\Inst_vga|address\(9) & ((\Inst_vga|Add7~17\) # (GND)))
-- \Inst_vga|Add7~19\ = CARRY((!\Inst_vga|Add7~17\) # (!\Inst_vga|address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(9),
	datad => VCC,
	cin => \Inst_vga|Add7~17\,
	combout => \Inst_vga|Add7~18_combout\,
	cout => \Inst_vga|Add7~19\);

-- Location: LCFF_X44_Y12_N3
\Inst_vga|address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[9]~35_combout\,
	sdata => \Inst_vga|Add7~18_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(9));

-- Location: LCCOMB_X44_Y12_N4
\Inst_vga|address[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[10]~37_combout\ = (\Inst_vga|address\(10) & ((GND) # (!\Inst_vga|address[9]~36\))) # (!\Inst_vga|address\(10) & (\Inst_vga|address[9]~36\ $ (GND)))
-- \Inst_vga|address[10]~38\ = CARRY((\Inst_vga|address\(10)) # (!\Inst_vga|address[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(10),
	datad => VCC,
	cin => \Inst_vga|address[9]~36\,
	combout => \Inst_vga|address[10]~37_combout\,
	cout => \Inst_vga|address[10]~38\);

-- Location: LCCOMB_X43_Y12_N4
\Inst_vga|Add7~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~20_combout\ = (\Inst_vga|address\(10) & (\Inst_vga|Add7~19\ $ (GND))) # (!\Inst_vga|address\(10) & (!\Inst_vga|Add7~19\ & VCC))
-- \Inst_vga|Add7~21\ = CARRY((\Inst_vga|address\(10) & !\Inst_vga|Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(10),
	datad => VCC,
	cin => \Inst_vga|Add7~19\,
	combout => \Inst_vga|Add7~20_combout\,
	cout => \Inst_vga|Add7~21\);

-- Location: LCFF_X44_Y12_N5
\Inst_vga|address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[10]~37_combout\,
	sdata => \Inst_vga|Add7~20_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(10));

-- Location: LCCOMB_X44_Y12_N6
\Inst_vga|address[11]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[11]~39_combout\ = (\Inst_vga|address\(11) & (\Inst_vga|address[10]~38\ & VCC)) # (!\Inst_vga|address\(11) & (!\Inst_vga|address[10]~38\))
-- \Inst_vga|address[11]~40\ = CARRY((!\Inst_vga|address\(11) & !\Inst_vga|address[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(11),
	datad => VCC,
	cin => \Inst_vga|address[10]~38\,
	combout => \Inst_vga|address[11]~39_combout\,
	cout => \Inst_vga|address[11]~40\);

-- Location: LCCOMB_X44_Y12_N8
\Inst_vga|address[12]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[12]~41_combout\ = (\Inst_vga|address\(12) & ((GND) # (!\Inst_vga|address[11]~40\))) # (!\Inst_vga|address\(12) & (\Inst_vga|address[11]~40\ $ (GND)))
-- \Inst_vga|address[12]~42\ = CARRY((\Inst_vga|address\(12)) # (!\Inst_vga|address[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(12),
	datad => VCC,
	cin => \Inst_vga|address[11]~40\,
	combout => \Inst_vga|address[12]~41_combout\,
	cout => \Inst_vga|address[12]~42\);

-- Location: LCCOMB_X43_Y12_N6
\Inst_vga|Add7~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~22_combout\ = (\Inst_vga|address\(11) & (!\Inst_vga|Add7~21\)) # (!\Inst_vga|address\(11) & ((\Inst_vga|Add7~21\) # (GND)))
-- \Inst_vga|Add7~23\ = CARRY((!\Inst_vga|Add7~21\) # (!\Inst_vga|address\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(11),
	datad => VCC,
	cin => \Inst_vga|Add7~21\,
	combout => \Inst_vga|Add7~22_combout\,
	cout => \Inst_vga|Add7~23\);

-- Location: LCFF_X44_Y12_N7
\Inst_vga|address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[11]~39_combout\,
	sdata => \Inst_vga|Add7~22_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(11));

-- Location: LCCOMB_X43_Y12_N8
\Inst_vga|Add7~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~24_combout\ = (\Inst_vga|address\(12) & (\Inst_vga|Add7~23\ $ (GND))) # (!\Inst_vga|address\(12) & (!\Inst_vga|Add7~23\ & VCC))
-- \Inst_vga|Add7~25\ = CARRY((\Inst_vga|address\(12) & !\Inst_vga|Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(12),
	datad => VCC,
	cin => \Inst_vga|Add7~23\,
	combout => \Inst_vga|Add7~24_combout\,
	cout => \Inst_vga|Add7~25\);

-- Location: LCFF_X44_Y12_N9
\Inst_vga|address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[12]~41_combout\,
	sdata => \Inst_vga|Add7~24_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(12));

-- Location: LCCOMB_X44_Y12_N10
\Inst_vga|address[13]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[13]~43_combout\ = (\Inst_vga|address\(13) & (\Inst_vga|address[12]~42\ & VCC)) # (!\Inst_vga|address\(13) & (!\Inst_vga|address[12]~42\))
-- \Inst_vga|address[13]~44\ = CARRY((!\Inst_vga|address\(13) & !\Inst_vga|address[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(13),
	datad => VCC,
	cin => \Inst_vga|address[12]~42\,
	combout => \Inst_vga|address[13]~43_combout\,
	cout => \Inst_vga|address[13]~44\);

-- Location: LCCOMB_X44_Y12_N12
\Inst_vga|address[14]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[14]~45_combout\ = (\Inst_vga|address\(14) & ((GND) # (!\Inst_vga|address[13]~44\))) # (!\Inst_vga|address\(14) & (\Inst_vga|address[13]~44\ $ (GND)))
-- \Inst_vga|address[14]~46\ = CARRY((\Inst_vga|address\(14)) # (!\Inst_vga|address[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(14),
	datad => VCC,
	cin => \Inst_vga|address[13]~44\,
	combout => \Inst_vga|address[14]~45_combout\,
	cout => \Inst_vga|address[14]~46\);

-- Location: LCCOMB_X44_Y12_N14
\Inst_vga|address[15]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[15]~47_combout\ = (\Inst_vga|address\(15) & (\Inst_vga|address[14]~46\ & VCC)) # (!\Inst_vga|address\(15) & (!\Inst_vga|address[14]~46\))
-- \Inst_vga|address[15]~48\ = CARRY((!\Inst_vga|address\(15) & !\Inst_vga|address[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(15),
	datad => VCC,
	cin => \Inst_vga|address[14]~46\,
	combout => \Inst_vga|address[15]~47_combout\,
	cout => \Inst_vga|address[15]~48\);

-- Location: LCCOMB_X43_Y12_N10
\Inst_vga|Add7~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~26_combout\ = (\Inst_vga|address\(13) & (!\Inst_vga|Add7~25\)) # (!\Inst_vga|address\(13) & ((\Inst_vga|Add7~25\) # (GND)))
-- \Inst_vga|Add7~27\ = CARRY((!\Inst_vga|Add7~25\) # (!\Inst_vga|address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(13),
	datad => VCC,
	cin => \Inst_vga|Add7~25\,
	combout => \Inst_vga|Add7~26_combout\,
	cout => \Inst_vga|Add7~27\);

-- Location: LCCOMB_X43_Y12_N12
\Inst_vga|Add7~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~28_combout\ = (\Inst_vga|address\(14) & (\Inst_vga|Add7~27\ $ (GND))) # (!\Inst_vga|address\(14) & (!\Inst_vga|Add7~27\ & VCC))
-- \Inst_vga|Add7~29\ = CARRY((\Inst_vga|address\(14) & !\Inst_vga|Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(14),
	datad => VCC,
	cin => \Inst_vga|Add7~27\,
	combout => \Inst_vga|Add7~28_combout\,
	cout => \Inst_vga|Add7~29\);

-- Location: LCCOMB_X43_Y12_N14
\Inst_vga|Add7~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~30_combout\ = (\Inst_vga|address\(15) & (!\Inst_vga|Add7~29\)) # (!\Inst_vga|address\(15) & ((\Inst_vga|Add7~29\) # (GND)))
-- \Inst_vga|Add7~31\ = CARRY((!\Inst_vga|Add7~29\) # (!\Inst_vga|address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|address\(15),
	datad => VCC,
	cin => \Inst_vga|Add7~29\,
	combout => \Inst_vga|Add7~30_combout\,
	cout => \Inst_vga|Add7~31\);

-- Location: LCFF_X44_Y12_N15
\Inst_vga|address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[15]~47_combout\,
	sdata => \Inst_vga|Add7~30_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(15));

-- Location: LCCOMB_X44_Y12_N16
\Inst_vga|address[16]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|address[16]~53_combout\ = \Inst_vga|address\(16) $ (\Inst_vga|address[15]~48\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(16),
	cin => \Inst_vga|address[15]~48\,
	combout => \Inst_vga|address[16]~53_combout\);

-- Location: LCCOMB_X43_Y12_N16
\Inst_vga|Add7~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add7~32_combout\ = \Inst_vga|address\(16) $ (!\Inst_vga|Add7~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(16),
	cin => \Inst_vga|Add7~31\,
	combout => \Inst_vga|Add7~32_combout\);

-- Location: LCFF_X44_Y12_N17
\Inst_vga|address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[16]~53_combout\,
	sdata => \Inst_vga|Add7~32_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(16));

-- Location: LCFF_X40_Y15_N31
\fb|altsyncram_component|auto_generated|altsyncram1|address_reg_a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|address\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fb|altsyncram_component|auto_generated|altsyncram1|address_reg_a\(2));

-- Location: LCFF_X40_Y15_N23
\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \fb|altsyncram_component|auto_generated|altsyncram1|address_reg_a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2));

-- Location: LCFF_X44_Y12_N13
\Inst_vga|address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[14]~45_combout\,
	sdata => \Inst_vga|Add7~28_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(14));

-- Location: LCFF_X40_Y15_N9
\fb|altsyncram_component|auto_generated|altsyncram1|address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|address\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fb|altsyncram_component|auto_generated|altsyncram1|address_reg_a\(0));

-- Location: LCFF_X40_Y15_N5
\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \fb|altsyncram_component|auto_generated|altsyncram1|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0));

-- Location: LCCOMB_X31_Y20_N2
\capture|address[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[0]~15_combout\ = \capture|address\(0) $ (VCC)
-- \capture|address[0]~16\ = CARRY(\capture|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(0),
	datad => VCC,
	combout => \capture|address[0]~15_combout\,
	cout => \capture|address[0]~16\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OV7670_VSYNC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OV7670_VSYNC,
	combout => \OV7670_VSYNC~combout\);

-- Location: LCCOMB_X31_Y20_N0
\fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]~0_combout\ = (!\capture|address\(12) & (!\capture|address\(13) & \capture|address\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(12),
	datac => \capture|address\(13),
	datad => \capture|address\(14),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]~0_combout\);

-- Location: LCCOMB_X31_Y20_N6
\capture|address[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[2]~19_combout\ = (\capture|address\(2) & (\capture|address[1]~18\ $ (GND))) # (!\capture|address\(2) & (!\capture|address[1]~18\ & VCC))
-- \capture|address[2]~20\ = CARRY((\capture|address\(2) & !\capture|address[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \capture|address\(2),
	datad => VCC,
	cin => \capture|address[1]~18\,
	combout => \capture|address[2]~19_combout\,
	cout => \capture|address[2]~20\);

-- Location: LCFF_X31_Y20_N7
\capture|address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[2]~19_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(2));

-- Location: LCCOMB_X32_Y20_N12
\capture|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|Equal0~0_combout\ = (\capture|address\(4) & (\capture|address\(1) & (\capture|address\(2) & \capture|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|address\(4),
	datab => \capture|address\(1),
	datac => \capture|address\(2),
	datad => \capture|address\(3),
	combout => \capture|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y20_N14
\capture|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|Equal0~1_combout\ = (\capture|address\(0) & (\fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]~0_combout\ & \capture|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|address\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]~0_combout\,
	datad => \capture|Equal0~0_combout\,
	combout => \capture|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y20_N12
\capture|address[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[5]~25_combout\ = (\capture|address\(5) & (!\capture|address[4]~24\)) # (!\capture|address\(5) & ((\capture|address[4]~24\) # (GND)))
-- \capture|address[5]~26\ = CARRY((!\capture|address[4]~24\) # (!\capture|address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \capture|address\(5),
	datad => VCC,
	cin => \capture|address[4]~24\,
	combout => \capture|address[5]~25_combout\,
	cout => \capture|address[5]~26\);

-- Location: LCFF_X31_Y20_N13
\capture|address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[5]~25_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(5));

-- Location: LCCOMB_X31_Y20_N16
\capture|address[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[7]~29_combout\ = (\capture|address\(7) & (!\capture|address[6]~28\)) # (!\capture|address\(7) & ((\capture|address[6]~28\) # (GND)))
-- \capture|address[7]~30\ = CARRY((!\capture|address[6]~28\) # (!\capture|address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \capture|address\(7),
	datad => VCC,
	cin => \capture|address[6]~28\,
	combout => \capture|address[7]~29_combout\,
	cout => \capture|address[7]~30\);

-- Location: LCFF_X31_Y20_N17
\capture|address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[7]~29_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(7));

-- Location: LCCOMB_X32_Y20_N20
\capture|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|Equal0~2_combout\ = (\capture|address\(6) & (!\capture|address\(8) & (\capture|address\(5) & \capture|address\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|address\(6),
	datab => \capture|address\(8),
	datac => \capture|address\(5),
	datad => \capture|address\(7),
	combout => \capture|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y20_N24
\capture|address[11]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[11]~37_combout\ = (\capture|address\(11) & (!\capture|address[10]~36\)) # (!\capture|address\(11) & ((\capture|address[10]~36\) # (GND)))
-- \capture|address[11]~38\ = CARRY((!\capture|address[10]~36\) # (!\capture|address\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \capture|address\(11),
	datad => VCC,
	cin => \capture|address[10]~36\,
	combout => \capture|address[11]~37_combout\,
	cout => \capture|address[11]~38\);

-- Location: LCFF_X31_Y20_N25
\capture|address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[11]~37_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(11));

-- Location: LCCOMB_X32_Y20_N18
\capture|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|Equal0~3_combout\ = (\capture|address\(9) & (!\capture|address\(10) & (\capture|Equal0~2_combout\ & \capture|address\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|address\(9),
	datab => \capture|address\(10),
	datac => \capture|Equal0~2_combout\,
	datad => \capture|address\(11),
	combout => \capture|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y20_N26
\capture|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|process_0~0_combout\ = ((\capture|Equal0~1_combout\ & \capture|Equal0~3_combout\)) # (!\capture|href_last~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|href_last~regout\,
	datac => \capture|Equal0~1_combout\,
	datad => \capture|Equal0~3_combout\,
	combout => \capture|process_0~0_combout\);

-- Location: LCCOMB_X32_Y20_N6
\capture|cnt[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|cnt[0]~0_combout\ = (!\OV7670_VSYNC~combout\ & (\capture|cnt\(0) $ (!\capture|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OV7670_VSYNC~combout\,
	datac => \capture|cnt\(0),
	datad => \capture|process_0~0_combout\,
	combout => \capture|cnt[0]~0_combout\);

-- Location: LCFF_X32_Y20_N7
\capture|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|cnt\(0));

-- Location: LCCOMB_X32_Y20_N28
\capture|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|Add1~0_combout\ = \capture|cnt\(1) $ (\capture|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \capture|cnt\(1),
	datad => \capture|cnt\(0),
	combout => \capture|Add1~0_combout\);

-- Location: LCCOMB_X32_Y20_N30
\capture|cnt[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|cnt[1]~1_combout\ = (\OV7670_VSYNC~combout\) # ((\capture|href_last~regout\ & ((!\capture|Equal0~3_combout\) # (!\capture|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|href_last~regout\,
	datab => \capture|Equal0~1_combout\,
	datac => \OV7670_VSYNC~combout\,
	datad => \capture|Equal0~3_combout\,
	combout => \capture|cnt[1]~1_combout\);

-- Location: LCFF_X32_Y20_N29
\capture|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|Add1~0_combout\,
	sclr => \OV7670_VSYNC~combout\,
	ena => \capture|cnt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|cnt\(1));

-- Location: LCCOMB_X32_Y20_N8
\capture|address[14]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[14]~43_combout\ = (\OV7670_VSYNC~combout\) # ((\capture|cnt\(0) & (\capture|cnt\(1) & !\capture|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|cnt\(0),
	datab => \capture|cnt\(1),
	datac => \OV7670_VSYNC~combout\,
	datad => \capture|process_0~0_combout\,
	combout => \capture|address[14]~43_combout\);

-- Location: LCFF_X31_Y20_N3
\capture|address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[0]~15_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(0));

-- Location: LCCOMB_X31_Y20_N4
\capture|address[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[1]~17_combout\ = (\capture|address\(1) & (!\capture|address[0]~16\)) # (!\capture|address\(1) & ((\capture|address[0]~16\) # (GND)))
-- \capture|address[1]~18\ = CARRY((!\capture|address[0]~16\) # (!\capture|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(1),
	datad => VCC,
	cin => \capture|address[0]~16\,
	combout => \capture|address[1]~17_combout\,
	cout => \capture|address[1]~18\);

-- Location: LCFF_X31_Y20_N5
\capture|address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[1]~17_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(1));

-- Location: LCCOMB_X31_Y20_N8
\capture|address[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[3]~21_combout\ = (\capture|address\(3) & (!\capture|address[2]~20\)) # (!\capture|address\(3) & ((\capture|address[2]~20\) # (GND)))
-- \capture|address[3]~22\ = CARRY((!\capture|address[2]~20\) # (!\capture|address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(3),
	datad => VCC,
	cin => \capture|address[2]~20\,
	combout => \capture|address[3]~21_combout\,
	cout => \capture|address[3]~22\);

-- Location: LCFF_X31_Y20_N9
\capture|address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[3]~21_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(3));

-- Location: LCCOMB_X31_Y20_N10
\capture|address[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[4]~23_combout\ = (\capture|address\(4) & (\capture|address[3]~22\ $ (GND))) # (!\capture|address\(4) & (!\capture|address[3]~22\ & VCC))
-- \capture|address[4]~24\ = CARRY((\capture|address\(4) & !\capture|address[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \capture|address\(4),
	datad => VCC,
	cin => \capture|address[3]~22\,
	combout => \capture|address[4]~23_combout\,
	cout => \capture|address[4]~24\);

-- Location: LCCOMB_X31_Y20_N14
\capture|address[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[6]~27_combout\ = (\capture|address\(6) & (\capture|address[5]~26\ $ (GND))) # (!\capture|address\(6) & (!\capture|address[5]~26\ & VCC))
-- \capture|address[6]~28\ = CARRY((\capture|address\(6) & !\capture|address[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(6),
	datad => VCC,
	cin => \capture|address[5]~26\,
	combout => \capture|address[6]~27_combout\,
	cout => \capture|address[6]~28\);

-- Location: LCFF_X31_Y20_N15
\capture|address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[6]~27_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(6));

-- Location: LCCOMB_X31_Y20_N18
\capture|address[8]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[8]~31_combout\ = (\capture|address\(8) & (\capture|address[7]~30\ $ (GND))) # (!\capture|address\(8) & (!\capture|address[7]~30\ & VCC))
-- \capture|address[8]~32\ = CARRY((\capture|address\(8) & !\capture|address[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(8),
	datad => VCC,
	cin => \capture|address[7]~30\,
	combout => \capture|address[8]~31_combout\,
	cout => \capture|address[8]~32\);

-- Location: LCFF_X31_Y20_N19
\capture|address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[8]~31_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(8));

-- Location: LCCOMB_X31_Y20_N20
\capture|address[9]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[9]~33_combout\ = (\capture|address\(9) & (!\capture|address[8]~32\)) # (!\capture|address\(9) & ((\capture|address[8]~32\) # (GND)))
-- \capture|address[9]~34\ = CARRY((!\capture|address[8]~32\) # (!\capture|address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \capture|address\(9),
	datad => VCC,
	cin => \capture|address[8]~32\,
	combout => \capture|address[9]~33_combout\,
	cout => \capture|address[9]~34\);

-- Location: LCCOMB_X31_Y20_N22
\capture|address[10]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[10]~35_combout\ = (\capture|address\(10) & (\capture|address[9]~34\ $ (GND))) # (!\capture|address\(10) & (!\capture|address[9]~34\ & VCC))
-- \capture|address[10]~36\ = CARRY((\capture|address\(10) & !\capture|address[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(10),
	datad => VCC,
	cin => \capture|address[9]~34\,
	combout => \capture|address[10]~35_combout\,
	cout => \capture|address[10]~36\);

-- Location: LCFF_X31_Y20_N23
\capture|address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[10]~35_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(10));

-- Location: LCCOMB_X31_Y20_N26
\capture|address[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[12]~39_combout\ = (\capture|address\(12) & (\capture|address[11]~38\ $ (GND))) # (!\capture|address\(12) & (!\capture|address[11]~38\ & VCC))
-- \capture|address[12]~40\ = CARRY((\capture|address\(12) & !\capture|address[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(12),
	datad => VCC,
	cin => \capture|address[11]~38\,
	combout => \capture|address[12]~39_combout\,
	cout => \capture|address[12]~40\);

-- Location: LCFF_X31_Y20_N27
\capture|address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[12]~39_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(12));

-- Location: LCCOMB_X31_Y20_N28
\capture|address[13]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[13]~41_combout\ = (\capture|address\(13) & (!\capture|address[12]~40\)) # (!\capture|address\(13) & ((\capture|address[12]~40\) # (GND)))
-- \capture|address[13]~42\ = CARRY((!\capture|address[12]~40\) # (!\capture|address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(13),
	datad => VCC,
	cin => \capture|address[12]~40\,
	combout => \capture|address[13]~41_combout\,
	cout => \capture|address[13]~42\);

-- Location: LCFF_X31_Y20_N29
\capture|address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[13]~41_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(13));

-- Location: LCCOMB_X31_Y20_N30
\capture|address[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|address[14]~44_combout\ = \capture|address[13]~42\ $ (!\capture|address\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \capture|address\(14),
	cin => \capture|address[13]~42\,
	combout => \capture|address[14]~44_combout\);

-- Location: LCFF_X31_Y20_N31
\capture|address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[14]~44_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(14));

-- Location: LCCOMB_X30_Y20_N24
\fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode894w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode894w\(3) = (\capture|we~regout\ & (!\capture|address\(14) & (\capture|address\(12) & \capture|address\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|we~regout\,
	datab => \capture|address\(14),
	datac => \capture|address\(12),
	datad => \capture|address\(13),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode894w\(3));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OV7670_PCLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OV7670_PCLK,
	combout => \OV7670_PCLK~combout\);

-- Location: CLKCTRL_G1
\OV7670_PCLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \OV7670_PCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \OV7670_PCLK~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y15_N8
\fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode894w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode894w[3]~0_combout\ = (!\Inst_vga|address\(16) & (\Inst_vga|address\(14) & \Inst_vga|address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(16),
	datac => \Inst_vga|address\(14),
	datad => \Inst_vga|address\(15),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode894w[3]~0_combout\);

-- Location: LCCOMB_X30_Y20_N10
\fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode894w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode894w[3]~0_combout\ = (!\capture|address\(14) & (\capture|address\(12) & \capture|address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(14),
	datac => \capture|address\(12),
	datad => \capture|address\(13),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode894w[3]~0_combout\);

-- Location: LCFF_X44_Y12_N11
\Inst_vga|address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|address[13]~43_combout\,
	sdata => \Inst_vga|Add7~26_combout\,
	sclr => \Inst_vga|LessThan10~1_combout\,
	sload => \Inst_vga|address[5]~51_combout\,
	ena => \Inst_vga|address[5]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|address\(13));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OV7670_D[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OV7670_D(6),
	combout => \OV7670_D~combout\(6));

-- Location: LCCOMB_X12_Y15_N12
\capture|d_latch[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|d_latch[6]~feeder_combout\ = \OV7670_D~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OV7670_D~combout\(6),
	combout => \capture|d_latch[6]~feeder_combout\);

-- Location: LCFF_X12_Y15_N13
\capture|d_latch[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|d_latch[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|d_latch\(6));

-- Location: LCCOMB_X12_Y15_N0
\capture|hold_green[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|hold_green[1]~feeder_combout\ = \capture|d_latch\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \capture|d_latch\(6),
	combout => \capture|hold_green[1]~feeder_combout\);

-- Location: LCFF_X12_Y15_N1
\capture|hold_green[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|hold_green[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|hold_green\(1));

-- Location: LCCOMB_X12_Y15_N4
\capture|dout[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|dout[3]~feeder_combout\ = \capture|hold_green\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \capture|hold_green\(1),
	combout => \capture|dout[3]~feeder_combout\);

-- Location: LCFF_X12_Y15_N5
\capture|dout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|dout[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|dout\(3));

-- Location: LCFF_X31_Y20_N11
\capture|address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[4]~23_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(4));

-- Location: LCFF_X31_Y20_N21
\capture|address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|address[9]~33_combout\,
	sdata => VCC,
	sload => \OV7670_VSYNC~combout\,
	ena => \capture|address[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|address\(9));

-- Location: M4K_X26_Y13
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode894w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode894w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode894w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y20_N4
\fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w\(3) = (\capture|we~regout\ & (!\capture|address\(12) & (!\capture|address\(13) & !\capture|address\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|we~regout\,
	datab => \capture|address\(12),
	datac => \capture|address\(13),
	datad => \capture|address\(14),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w\(3));

-- Location: LCCOMB_X44_Y12_N20
\fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode857w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode857w\(3) = (!\Inst_vga|address\(16) & (!\Inst_vga|address\(15) & !\Inst_vga|address\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(16),
	datac => \Inst_vga|address\(15),
	datad => \Inst_vga|address\(14),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode857w\(3));

-- Location: LCCOMB_X30_Y20_N6
\fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w[3]~0_combout\ = (!\capture|address\(13) & (!\capture|address\(12) & !\capture|address\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(13),
	datac => \capture|address\(12),
	datad => \capture|address\(14),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w[3]~0_combout\);

-- Location: M4K_X13_Y17
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode857w\(3),
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y20_N8
\fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode884w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode884w\(3) = (\capture|we~regout\ & (!\capture|address\(12) & (\capture|address\(13) & !\capture|address\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|we~regout\,
	datab => \capture|address\(12),
	datac => \capture|address\(13),
	datad => \capture|address\(14),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode884w\(3));

-- Location: LCCOMB_X44_Y12_N22
\fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode884w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode884w[3]~0_combout\ = (!\Inst_vga|address\(16) & (\Inst_vga|address\(15) & !\Inst_vga|address\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(16),
	datac => \Inst_vga|address\(15),
	datad => \Inst_vga|address\(14),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode884w[3]~0_combout\);

-- Location: LCCOMB_X30_Y20_N2
\fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode884w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode884w[3]~0_combout\ = (!\capture|address\(14) & (!\capture|address\(12) & \capture|address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(14),
	datac => \capture|address\(12),
	datad => \capture|address\(13),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode884w[3]~0_combout\);

-- Location: M4K_X26_Y19
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode884w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode884w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode884w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y15_N18
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~20_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0)) # 
-- ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19~portadataout\)))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a3~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a19~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~20_combout\);

-- Location: LCCOMB_X40_Y15_N12
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~21_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~20_combout\ & 
-- ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27~portadataout\))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~20_combout\ & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11~portadataout\)))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a11~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a27~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~20_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~21_combout\);

-- Location: LCCOMB_X40_Y15_N6
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~22_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & (\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~19_combout\)) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~19_combout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2),
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~21_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~22_combout\);

-- Location: LCCOMB_X30_Y20_N0
\fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode874w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode874w\(3) = (\capture|we~regout\ & (!\capture|address\(13) & (!\capture|address\(14) & \capture|address\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|we~regout\,
	datab => \capture|address\(13),
	datac => \capture|address\(14),
	datad => \capture|address\(12),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode874w\(3));

-- Location: LCCOMB_X40_Y15_N24
\fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode874w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode874w[3]~0_combout\ = (!\Inst_vga|address\(16) & (\Inst_vga|address\(14) & !\Inst_vga|address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(16),
	datac => \Inst_vga|address\(14),
	datad => \Inst_vga|address\(15),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode874w[3]~0_combout\);

-- Location: LCCOMB_X30_Y20_N22
\fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode874w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode874w[3]~0_combout\ = (!\capture|address\(14) & (\capture|address\(12) & !\capture|address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(14),
	datac => \capture|address\(12),
	datad => \capture|address\(13),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode874w[3]~0_combout\);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OV7670_D[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OV7670_D(7),
	combout => \OV7670_D~combout\(7));

-- Location: LCCOMB_X12_Y15_N18
\capture|d_latch[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|d_latch[7]~feeder_combout\ = \OV7670_D~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OV7670_D~combout\(7),
	combout => \capture|d_latch[7]~feeder_combout\);

-- Location: LCFF_X12_Y15_N19
\capture|d_latch[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|d_latch[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|d_latch\(7));

-- Location: LCCOMB_X12_Y15_N2
\capture|hold_green[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|hold_green[2]~feeder_combout\ = \capture|d_latch\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \capture|d_latch\(7),
	combout => \capture|hold_green[2]~feeder_combout\);

-- Location: LCFF_X12_Y15_N3
\capture|hold_green[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|hold_green[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|hold_green\(2));

-- Location: LCCOMB_X12_Y15_N14
\capture|dout[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|dout[4]~feeder_combout\ = \capture|hold_green\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \capture|hold_green\(2),
	combout => \capture|dout[4]~feeder_combout\);

-- Location: LCFF_X12_Y15_N15
\capture|dout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|dout[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|dout\(4));

-- Location: M4K_X26_Y14
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode874w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode874w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode874w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y12
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode894w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode894w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode894w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y16
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode857w\(3),
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y13
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode884w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode884w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode884w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20_PORTADATAOUT_bus\);

-- Location: LCCOMB_X37_Y15_N0
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~25_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0)) # 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20~portadataout\)))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4~portadataout\ & 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a4~portadataout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a20~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~25_combout\);

-- Location: LCCOMB_X37_Y15_N14
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~26_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~25_combout\ & 
-- ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28~portadataout\))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~25_combout\ & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12~portadataout\)))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a12~portadataout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a28~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~25_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~26_combout\);

-- Location: LCCOMB_X30_Y20_N20
\fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode934w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode934w\(3) = (\capture|we~regout\ & (\capture|address\(13) & (\capture|address\(14) & \capture|address\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|we~regout\,
	datab => \capture|address\(13),
	datac => \capture|address\(14),
	datad => \capture|address\(12),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode934w\(3));

-- Location: LCCOMB_X40_Y15_N4
\fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode934w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode934w[3]~0_combout\ = (\Inst_vga|address\(16) & (\Inst_vga|address\(14) & \Inst_vga|address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(16),
	datab => \Inst_vga|address\(14),
	datad => \Inst_vga|address\(15),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode934w[3]~0_combout\);

-- Location: LCCOMB_X30_Y20_N26
\fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode934w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode934w[3]~0_combout\ = (\capture|address\(14) & (\capture|address\(12) & \capture|address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(14),
	datac => \capture|address\(12),
	datad => \capture|address\(13),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode934w[3]~0_combout\);

-- Location: M4K_X52_Y11
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode934w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode934w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode934w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y20_N30
\fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode914w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode914w\(3) = (\capture|we~regout\ & (\capture|address\(12) & (!\capture|address\(13) & \capture|address\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|we~regout\,
	datab => \capture|address\(12),
	datac => \capture|address\(13),
	datad => \capture|address\(14),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode914w\(3));

-- Location: LCCOMB_X40_Y15_N22
\fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode914w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode914w[3]~0_combout\ = (\Inst_vga|address\(16) & (\Inst_vga|address\(14) & !\Inst_vga|address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(16),
	datab => \Inst_vga|address\(14),
	datad => \Inst_vga|address\(15),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode914w[3]~0_combout\);

-- Location: LCCOMB_X30_Y20_N28
\fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode914w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode914w[3]~0_combout\ = (\capture|address\(14) & (\capture|address\(12) & !\capture|address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(14),
	datac => \capture|address\(12),
	datad => \capture|address\(13),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode914w[3]~0_combout\);

-- Location: M4K_X26_Y15
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode914w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode914w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode914w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y20_N18
\fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w\(3) = (\capture|we~regout\ & (\capture|address\(14) & (!\capture|address\(13) & !\capture|address\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|we~regout\,
	datab => \capture|address\(14),
	datac => \capture|address\(13),
	datad => \capture|address\(12),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w\(3));

-- Location: LCCOMB_X40_Y15_N20
\fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode904w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode904w[3]~0_combout\ = (\Inst_vga|address\(16) & (!\Inst_vga|address\(14) & !\Inst_vga|address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(16),
	datac => \Inst_vga|address\(14),
	datad => \Inst_vga|address\(15),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode904w[3]~0_combout\);

-- Location: M4K_X52_Y13
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode904w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36_PORTADATAOUT_bus\);

-- Location: LCFF_X40_Y15_N7
\fb|altsyncram_component|auto_generated|altsyncram1|address_reg_a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|address\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fb|altsyncram_component|auto_generated|altsyncram1|address_reg_a\(1));

-- Location: LCFF_X40_Y15_N11
\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \fb|altsyncram_component|auto_generated|altsyncram1|address_reg_a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1));

-- Location: LCCOMB_X37_Y15_N20
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~23_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44~portadataout\) # 
-- ((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1))))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36~portadataout\ & 
-- !\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a44~portadataout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a36~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~23_combout\);

-- Location: LCCOMB_X30_Y20_N14
\fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode924w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode924w\(3) = (\capture|we~regout\ & (\capture|address\(13) & (\capture|address\(14) & !\capture|address\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \capture|we~regout\,
	datab => \capture|address\(13),
	datac => \capture|address\(14),
	datad => \capture|address\(12),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode924w\(3));

-- Location: LCCOMB_X40_Y15_N10
\fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode924w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode924w[3]~0_combout\ = (\Inst_vga|address\(16) & (!\Inst_vga|address\(14) & \Inst_vga|address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|address\(16),
	datab => \Inst_vga|address\(14),
	datad => \Inst_vga|address\(15),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode924w[3]~0_combout\);

-- Location: LCCOMB_X30_Y20_N16
\fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode924w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode924w[3]~0_combout\ = (\capture|address\(14) & (!\capture|address\(12) & \capture|address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \capture|address\(14),
	datac => \capture|address\(12),
	datad => \capture|address\(13),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode924w[3]~0_combout\);

-- Location: M4K_X13_Y28
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode924w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode924w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode924w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52_PORTADATAOUT_bus\);

-- Location: LCCOMB_X37_Y15_N18
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~24_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~23_combout\ & 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60~portadataout\)) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~23_combout\ & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52~portadataout\))))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a60~portadataout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~23_combout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a52~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~24_combout\);

-- Location: LCCOMB_X37_Y15_N28
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~27_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~24_combout\))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & (\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~26_combout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~24_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~27_combout\);

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OV7670_D[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OV7670_D(2),
	combout => \OV7670_D~combout\(2));

-- Location: LCCOMB_X23_Y20_N0
\capture|d_latch[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|d_latch[2]~feeder_combout\ = \OV7670_D~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OV7670_D~combout\(2),
	combout => \capture|d_latch[2]~feeder_combout\);

-- Location: LCFF_X23_Y20_N1
\capture|d_latch[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|d_latch[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|d_latch\(2));

-- Location: LCCOMB_X23_Y20_N2
\capture|hold_red[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|hold_red[2]~feeder_combout\ = \capture|d_latch\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \capture|d_latch\(2),
	combout => \capture|hold_red[2]~feeder_combout\);

-- Location: LCFF_X23_Y20_N3
\capture|hold_red[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|hold_red[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|hold_red\(2));

-- Location: LCCOMB_X23_Y20_N24
\capture|dout[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|dout[7]~feeder_combout\ = \capture|hold_red\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \capture|hold_red\(2),
	combout => \capture|dout[7]~feeder_combout\);

-- Location: LCFF_X23_Y20_N25
\capture|dout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|dout[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|dout\(7));

-- Location: M4K_X52_Y22
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode874w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode874w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode874w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y22
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode894w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode894w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode894w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y19
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode884w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode884w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode884w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y19
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode857w\(3),
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X41_Y19_N12
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~11_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23~portadataout\) # 
-- ((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0))))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7~portadataout\ & 
-- !\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a23~portadataout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a7~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~11_combout\);

-- Location: LCCOMB_X41_Y19_N14
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~12_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~11_combout\ & 
-- ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31~portadataout\))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~11_combout\ & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15~portadataout\)))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a15~portadataout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a31~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~11_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~12_combout\);

-- Location: M4K_X52_Y23
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode934w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode934w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode934w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y23
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode924w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode924w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode924w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y15
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode914w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode914w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode914w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y21
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode904w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39_PORTADATAOUT_bus\);

-- Location: LCCOMB_X41_Y19_N0
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~9_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47~portadataout\)) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a47~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a39~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~9_combout\);

-- Location: LCCOMB_X41_Y19_N18
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~10_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~9_combout\ & 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63~portadataout\)) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~9_combout\ & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55~portadataout\))))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a63~portadataout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a55~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~9_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~10_combout\);

-- Location: LCCOMB_X41_Y19_N8
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~13_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~10_combout\))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & (\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~12_combout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~10_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~13_combout\);

-- Location: LCCOMB_X41_Y15_N28
\Inst_vga|iMin[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|iMin[3]~0_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~8_combout\ & (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~13_combout\ & ((!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~27_combout\) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~22_combout\)))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~8_combout\ & (((!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~27_combout\)) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~8_combout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~22_combout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~27_combout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~13_combout\,
	combout => \Inst_vga|iMin[3]~0_combout\);

-- Location: LCCOMB_X41_Y15_N22
\Inst_vga|iMin[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|iMin[3]~1_combout\ = (\Inst_vga|blank~regout\ & \Inst_vga|iMin[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|blank~regout\,
	datad => \Inst_vga|iMin[3]~0_combout\,
	combout => \Inst_vga|iMin[3]~1_combout\);

-- Location: LCCOMB_X45_Y15_N14
\Inst_vga|iMax[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|iMax[9]~0_combout\ = (!\Inst_vga|Equal1~1_combout\ & (\Inst_vga|Equal0~3_combout\ & (\Inst_vga|LessThan1~18_combout\ & \Inst_vga|iMin[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal1~1_combout\,
	datab => \Inst_vga|Equal0~3_combout\,
	datac => \Inst_vga|LessThan1~18_combout\,
	datad => \Inst_vga|iMin[3]~1_combout\,
	combout => \Inst_vga|iMax[9]~0_combout\);

-- Location: LCFF_X45_Y15_N25
\Inst_vga|iMax[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|vCounter\(7),
	sload => VCC,
	ena => \Inst_vga|iMax[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMax\(7));

-- Location: LCCOMB_X45_Y15_N16
\Inst_vga|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add2~0_combout\ = \Inst_vga|iMax\(3) $ (VCC)
-- \Inst_vga|Add2~1\ = CARRY(\Inst_vga|iMax\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|iMax\(3),
	datad => VCC,
	combout => \Inst_vga|Add2~0_combout\,
	cout => \Inst_vga|Add2~1\);

-- Location: LCCOMB_X45_Y15_N18
\Inst_vga|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add2~2_combout\ = (\Inst_vga|iMax\(4) & (!\Inst_vga|Add2~1\)) # (!\Inst_vga|iMax\(4) & ((\Inst_vga|Add2~1\) # (GND)))
-- \Inst_vga|Add2~3\ = CARRY((!\Inst_vga|Add2~1\) # (!\Inst_vga|iMax\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|iMax\(4),
	datad => VCC,
	cin => \Inst_vga|Add2~1\,
	combout => \Inst_vga|Add2~2_combout\,
	cout => \Inst_vga|Add2~3\);

-- Location: LCCOMB_X45_Y15_N22
\Inst_vga|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add2~6_combout\ = (\Inst_vga|iMax\(6) & (!\Inst_vga|Add2~5\)) # (!\Inst_vga|iMax\(6) & ((\Inst_vga|Add2~5\) # (GND)))
-- \Inst_vga|Add2~7\ = CARRY((!\Inst_vga|Add2~5\) # (!\Inst_vga|iMax\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(6),
	datad => VCC,
	cin => \Inst_vga|Add2~5\,
	combout => \Inst_vga|Add2~6_combout\,
	cout => \Inst_vga|Add2~7\);

-- Location: LCCOMB_X45_Y15_N24
\Inst_vga|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add2~8_combout\ = (\Inst_vga|iMax\(7) & (\Inst_vga|Add2~7\ $ (GND))) # (!\Inst_vga|iMax\(7) & (!\Inst_vga|Add2~7\ & VCC))
-- \Inst_vga|Add2~9\ = CARRY((\Inst_vga|iMax\(7) & !\Inst_vga|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|iMax\(7),
	datad => VCC,
	cin => \Inst_vga|Add2~7\,
	combout => \Inst_vga|Add2~8_combout\,
	cout => \Inst_vga|Add2~9\);

-- Location: LCCOMB_X45_Y15_N26
\Inst_vga|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add2~10_combout\ = (\Inst_vga|iMax\(8) & (!\Inst_vga|Add2~9\)) # (!\Inst_vga|iMax\(8) & ((\Inst_vga|Add2~9\) # (GND)))
-- \Inst_vga|Add2~11\ = CARRY((!\Inst_vga|Add2~9\) # (!\Inst_vga|iMax\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(8),
	datad => VCC,
	cin => \Inst_vga|Add2~9\,
	combout => \Inst_vga|Add2~10_combout\,
	cout => \Inst_vga|Add2~11\);

-- Location: LCCOMB_X45_Y15_N28
\Inst_vga|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add2~12_combout\ = \Inst_vga|iMax\(9) $ (!\Inst_vga|Add2~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(9),
	cin => \Inst_vga|Add2~11\,
	combout => \Inst_vga|Add2~12_combout\);

-- Location: LCCOMB_X45_Y15_N10
\Inst_vga|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal5~0_combout\ = (\Inst_vga|vCounter\(9) & (\Inst_vga|Add2~12_combout\ & (\Inst_vga|Add2~10_combout\ $ (!\Inst_vga|vCounter\(8))))) # (!\Inst_vga|vCounter\(9) & (!\Inst_vga|Add2~12_combout\ & (\Inst_vga|Add2~10_combout\ $ 
-- (!\Inst_vga|vCounter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(9),
	datab => \Inst_vga|Add2~10_combout\,
	datac => \Inst_vga|vCounter\(8),
	datad => \Inst_vga|Add2~12_combout\,
	combout => \Inst_vga|Equal5~0_combout\);

-- Location: LCFF_X45_Y15_N31
\Inst_vga|iMax[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|vCounter\(1),
	sload => VCC,
	ena => \Inst_vga|iMax[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMax\(1));

-- Location: LCCOMB_X45_Y15_N30
\Inst_vga|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal5~1_combout\ = (\Inst_vga|vCounter\(1) & (\Inst_vga|iMax\(1) & (\Inst_vga|vCounter\(0) $ (!\Inst_vga|iMax\(0))))) # (!\Inst_vga|vCounter\(1) & (!\Inst_vga|iMax\(1) & (\Inst_vga|vCounter\(0) $ (!\Inst_vga|iMax\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(1),
	datab => \Inst_vga|vCounter\(0),
	datac => \Inst_vga|iMax\(1),
	datad => \Inst_vga|iMax\(0),
	combout => \Inst_vga|Equal5~1_combout\);

-- Location: LCCOMB_X45_Y15_N8
\Inst_vga|Equal5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal5~3_combout\ = (\Inst_vga|Add2~4_combout\ & (\Inst_vga|vCounter\(5) & (\Inst_vga|vCounter\(4) $ (!\Inst_vga|Add2~2_combout\)))) # (!\Inst_vga|Add2~4_combout\ & (!\Inst_vga|vCounter\(5) & (\Inst_vga|vCounter\(4) $ 
-- (!\Inst_vga|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add2~4_combout\,
	datab => \Inst_vga|vCounter\(4),
	datac => \Inst_vga|vCounter\(5),
	datad => \Inst_vga|Add2~2_combout\,
	combout => \Inst_vga|Equal5~3_combout\);

-- Location: LCCOMB_X45_Y15_N2
\Inst_vga|Equal5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal5~4_combout\ = (\Inst_vga|Add2~8_combout\ & (\Inst_vga|vCounter\(7) & (\Inst_vga|vCounter\(6) $ (!\Inst_vga|Add2~6_combout\)))) # (!\Inst_vga|Add2~8_combout\ & (!\Inst_vga|vCounter\(7) & (\Inst_vga|vCounter\(6) $ 
-- (!\Inst_vga|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add2~8_combout\,
	datab => \Inst_vga|vCounter\(7),
	datac => \Inst_vga|vCounter\(6),
	datad => \Inst_vga|Add2~6_combout\,
	combout => \Inst_vga|Equal5~4_combout\);

-- Location: LCCOMB_X45_Y15_N4
\Inst_vga|Equal5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal5~5_combout\ = (\Inst_vga|Equal5~2_combout\ & (\Inst_vga|Equal5~1_combout\ & (\Inst_vga|Equal5~3_combout\ & \Inst_vga|Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal5~2_combout\,
	datab => \Inst_vga|Equal5~1_combout\,
	datac => \Inst_vga|Equal5~3_combout\,
	datad => \Inst_vga|Equal5~4_combout\,
	combout => \Inst_vga|Equal5~5_combout\);

-- Location: LCCOMB_X42_Y15_N0
\Inst_vga|iMin[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|iMin[1]~11_combout\ = !\Inst_vga|vCounter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga|vCounter\(1),
	combout => \Inst_vga|iMin[1]~11_combout\);

-- Location: LCCOMB_X42_Y15_N28
\Inst_vga|iMin[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|iMin[9]~3_combout\ = !\Inst_vga|vCounter\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga|vCounter\(9),
	combout => \Inst_vga|iMin[9]~3_combout\);

-- Location: LCFF_X42_Y15_N29
\Inst_vga|iMin[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|iMin[9]~3_combout\,
	ena => \Inst_vga|iMin[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMin\(9));

-- Location: LCCOMB_X43_Y15_N28
\Inst_vga|iMin[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|iMin[8]~4_combout\ = !\Inst_vga|vCounter\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|vCounter\(8),
	combout => \Inst_vga|iMin[8]~4_combout\);

-- Location: LCFF_X43_Y15_N29
\Inst_vga|iMin[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|iMin[8]~4_combout\,
	ena => \Inst_vga|iMin[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMin\(8));

-- Location: LCCOMB_X44_Y15_N22
\Inst_vga|iMin[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|iMin[7]~5_combout\ = !\Inst_vga|vCounter\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|vCounter\(7),
	combout => \Inst_vga|iMin[7]~5_combout\);

-- Location: LCFF_X42_Y15_N7
\Inst_vga|iMin[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|iMin[7]~5_combout\,
	sload => VCC,
	ena => \Inst_vga|iMin[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMin\(7));

-- Location: LCCOMB_X44_Y15_N2
\Inst_vga|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan0~1_cout\ = CARRY((!\Inst_vga|iMin\(0) & !\Inst_vga|vCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMin\(0),
	datab => \Inst_vga|vCounter\(0),
	datad => VCC,
	cout => \Inst_vga|LessThan0~1_cout\);

-- Location: LCCOMB_X44_Y15_N4
\Inst_vga|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan0~3_cout\ = CARRY((\Inst_vga|iMin\(1) & ((\Inst_vga|vCounter\(1)) # (!\Inst_vga|LessThan0~1_cout\))) # (!\Inst_vga|iMin\(1) & (\Inst_vga|vCounter\(1) & !\Inst_vga|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMin\(1),
	datab => \Inst_vga|vCounter\(1),
	datad => VCC,
	cin => \Inst_vga|LessThan0~1_cout\,
	cout => \Inst_vga|LessThan0~3_cout\);

-- Location: LCCOMB_X44_Y15_N6
\Inst_vga|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan0~5_cout\ = CARRY((\Inst_vga|iMin\(2) & (!\Inst_vga|vCounter\(2) & !\Inst_vga|LessThan0~3_cout\)) # (!\Inst_vga|iMin\(2) & ((!\Inst_vga|LessThan0~3_cout\) # (!\Inst_vga|vCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMin\(2),
	datab => \Inst_vga|vCounter\(2),
	datad => VCC,
	cin => \Inst_vga|LessThan0~3_cout\,
	cout => \Inst_vga|LessThan0~5_cout\);

-- Location: LCCOMB_X44_Y15_N8
\Inst_vga|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan0~7_cout\ = CARRY((\Inst_vga|iMin\(3) & ((\Inst_vga|vCounter\(3)) # (!\Inst_vga|LessThan0~5_cout\))) # (!\Inst_vga|iMin\(3) & (\Inst_vga|vCounter\(3) & !\Inst_vga|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMin\(3),
	datab => \Inst_vga|vCounter\(3),
	datad => VCC,
	cin => \Inst_vga|LessThan0~5_cout\,
	cout => \Inst_vga|LessThan0~7_cout\);

-- Location: LCCOMB_X44_Y15_N10
\Inst_vga|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan0~9_cout\ = CARRY((\Inst_vga|iMin\(4) & (!\Inst_vga|vCounter\(4) & !\Inst_vga|LessThan0~7_cout\)) # (!\Inst_vga|iMin\(4) & ((!\Inst_vga|LessThan0~7_cout\) # (!\Inst_vga|vCounter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMin\(4),
	datab => \Inst_vga|vCounter\(4),
	datad => VCC,
	cin => \Inst_vga|LessThan0~7_cout\,
	cout => \Inst_vga|LessThan0~9_cout\);

-- Location: LCCOMB_X44_Y15_N12
\Inst_vga|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan0~11_cout\ = CARRY((\Inst_vga|iMin\(5) & ((\Inst_vga|vCounter\(5)) # (!\Inst_vga|LessThan0~9_cout\))) # (!\Inst_vga|iMin\(5) & (\Inst_vga|vCounter\(5) & !\Inst_vga|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMin\(5),
	datab => \Inst_vga|vCounter\(5),
	datad => VCC,
	cin => \Inst_vga|LessThan0~9_cout\,
	cout => \Inst_vga|LessThan0~11_cout\);

-- Location: LCCOMB_X44_Y15_N14
\Inst_vga|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan0~13_cout\ = CARRY((\Inst_vga|iMin\(6) & (!\Inst_vga|vCounter\(6) & !\Inst_vga|LessThan0~11_cout\)) # (!\Inst_vga|iMin\(6) & ((!\Inst_vga|LessThan0~11_cout\) # (!\Inst_vga|vCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMin\(6),
	datab => \Inst_vga|vCounter\(6),
	datad => VCC,
	cin => \Inst_vga|LessThan0~11_cout\,
	cout => \Inst_vga|LessThan0~13_cout\);

-- Location: LCCOMB_X44_Y15_N16
\Inst_vga|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan0~15_cout\ = CARRY((\Inst_vga|vCounter\(7) & ((\Inst_vga|iMin\(7)) # (!\Inst_vga|LessThan0~13_cout\))) # (!\Inst_vga|vCounter\(7) & (\Inst_vga|iMin\(7) & !\Inst_vga|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(7),
	datab => \Inst_vga|iMin\(7),
	datad => VCC,
	cin => \Inst_vga|LessThan0~13_cout\,
	cout => \Inst_vga|LessThan0~15_cout\);

-- Location: LCCOMB_X44_Y15_N18
\Inst_vga|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan0~17_cout\ = CARRY((\Inst_vga|vCounter\(8) & (!\Inst_vga|iMin\(8) & !\Inst_vga|LessThan0~15_cout\)) # (!\Inst_vga|vCounter\(8) & ((!\Inst_vga|LessThan0~15_cout\) # (!\Inst_vga|iMin\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(8),
	datab => \Inst_vga|iMin\(8),
	datad => VCC,
	cin => \Inst_vga|LessThan0~15_cout\,
	cout => \Inst_vga|LessThan0~17_cout\);

-- Location: LCCOMB_X44_Y15_N20
\Inst_vga|LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan0~18_combout\ = (\Inst_vga|iMin\(9) & (\Inst_vga|LessThan0~17_cout\ & !\Inst_vga|vCounter\(9))) # (!\Inst_vga|iMin\(9) & ((\Inst_vga|LessThan0~17_cout\) # (!\Inst_vga|vCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|iMin\(9),
	datad => \Inst_vga|vCounter\(9),
	cin => \Inst_vga|LessThan0~17_cout\,
	combout => \Inst_vga|LessThan0~18_combout\);

-- Location: LCCOMB_X42_Y15_N30
\Inst_vga|iMin[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|iMin[3]~2_combout\ = (\Inst_vga|Equal0~3_combout\ & (!\Inst_vga|Equal1~1_combout\ & (\Inst_vga|LessThan0~18_combout\ & \Inst_vga|iMin[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal0~3_combout\,
	datab => \Inst_vga|Equal1~1_combout\,
	datac => \Inst_vga|LessThan0~18_combout\,
	datad => \Inst_vga|iMin[3]~1_combout\,
	combout => \Inst_vga|iMin[3]~2_combout\);

-- Location: LCFF_X42_Y15_N1
\Inst_vga|iMin[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|iMin[1]~11_combout\,
	ena => \Inst_vga|iMin[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMin\(1));

-- Location: LCCOMB_X43_Y15_N2
\Inst_vga|Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal6~1_combout\ = (\Inst_vga|iMin\(0) & (!\Inst_vga|vCounter\(0) & (\Inst_vga|iMin\(1) $ (\Inst_vga|vCounter\(1))))) # (!\Inst_vga|iMin\(0) & (\Inst_vga|vCounter\(0) & (\Inst_vga|iMin\(1) $ (\Inst_vga|vCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMin\(0),
	datab => \Inst_vga|vCounter\(0),
	datac => \Inst_vga|iMin\(1),
	datad => \Inst_vga|vCounter\(1),
	combout => \Inst_vga|Equal6~1_combout\);

-- Location: LCCOMB_X43_Y15_N26
\Inst_vga|iMin[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|iMin[5]~7_combout\ = !\Inst_vga|vCounter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga|vCounter\(5),
	combout => \Inst_vga|iMin[5]~7_combout\);

-- Location: LCFF_X43_Y15_N27
\Inst_vga|iMin[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|iMin[5]~7_combout\,
	ena => \Inst_vga|iMin[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMin\(5));

-- Location: LCCOMB_X43_Y15_N0
\Inst_vga|iMin[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|iMin[3]~9_combout\ = !\Inst_vga|vCounter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga|vCounter\(3),
	combout => \Inst_vga|iMin[3]~9_combout\);

-- Location: LCFF_X43_Y15_N1
\Inst_vga|iMin[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|iMin[3]~9_combout\,
	ena => \Inst_vga|iMin[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMin\(3));

-- Location: LCCOMB_X43_Y15_N8
\Inst_vga|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add3~2_combout\ = (\Inst_vga|iMin\(4) & (!\Inst_vga|Add3~1\)) # (!\Inst_vga|iMin\(4) & (\Inst_vga|Add3~1\ & VCC))
-- \Inst_vga|Add3~3\ = CARRY((\Inst_vga|iMin\(4) & !\Inst_vga|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMin\(4),
	datad => VCC,
	cin => \Inst_vga|Add3~1\,
	combout => \Inst_vga|Add3~2_combout\,
	cout => \Inst_vga|Add3~3\);

-- Location: LCCOMB_X43_Y15_N10
\Inst_vga|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add3~4_combout\ = (\Inst_vga|iMin\(5) & (\Inst_vga|Add3~3\ $ (GND))) # (!\Inst_vga|iMin\(5) & ((GND) # (!\Inst_vga|Add3~3\)))
-- \Inst_vga|Add3~5\ = CARRY((!\Inst_vga|Add3~3\) # (!\Inst_vga|iMin\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|iMin\(5),
	datad => VCC,
	cin => \Inst_vga|Add3~3\,
	combout => \Inst_vga|Add3~4_combout\,
	cout => \Inst_vga|Add3~5\);

-- Location: LCCOMB_X43_Y15_N12
\Inst_vga|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add3~6_combout\ = (\Inst_vga|iMin\(6) & (!\Inst_vga|Add3~5\)) # (!\Inst_vga|iMin\(6) & (\Inst_vga|Add3~5\ & VCC))
-- \Inst_vga|Add3~7\ = CARRY((\Inst_vga|iMin\(6) & !\Inst_vga|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMin\(6),
	datad => VCC,
	cin => \Inst_vga|Add3~5\,
	combout => \Inst_vga|Add3~6_combout\,
	cout => \Inst_vga|Add3~7\);

-- Location: LCCOMB_X43_Y15_N14
\Inst_vga|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add3~8_combout\ = (\Inst_vga|iMin\(7) & (\Inst_vga|Add3~7\ $ (GND))) # (!\Inst_vga|iMin\(7) & ((GND) # (!\Inst_vga|Add3~7\)))
-- \Inst_vga|Add3~9\ = CARRY((!\Inst_vga|Add3~7\) # (!\Inst_vga|iMin\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|iMin\(7),
	datad => VCC,
	cin => \Inst_vga|Add3~7\,
	combout => \Inst_vga|Add3~8_combout\,
	cout => \Inst_vga|Add3~9\);

-- Location: LCCOMB_X43_Y15_N20
\Inst_vga|Equal6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal6~4_combout\ = (\Inst_vga|vCounter\(6) & (\Inst_vga|Add3~6_combout\ & (\Inst_vga|vCounter\(7) $ (!\Inst_vga|Add3~8_combout\)))) # (!\Inst_vga|vCounter\(6) & (!\Inst_vga|Add3~6_combout\ & (\Inst_vga|vCounter\(7) $ 
-- (!\Inst_vga|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(6),
	datab => \Inst_vga|vCounter\(7),
	datac => \Inst_vga|Add3~8_combout\,
	datad => \Inst_vga|Add3~6_combout\,
	combout => \Inst_vga|Equal6~4_combout\);

-- Location: LCCOMB_X43_Y15_N22
\Inst_vga|Equal6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal6~3_combout\ = (\Inst_vga|vCounter\(4) & (\Inst_vga|Add3~2_combout\ & (\Inst_vga|Add3~4_combout\ $ (!\Inst_vga|vCounter\(5))))) # (!\Inst_vga|vCounter\(4) & (!\Inst_vga|Add3~2_combout\ & (\Inst_vga|Add3~4_combout\ $ 
-- (!\Inst_vga|vCounter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(4),
	datab => \Inst_vga|Add3~2_combout\,
	datac => \Inst_vga|Add3~4_combout\,
	datad => \Inst_vga|vCounter\(5),
	combout => \Inst_vga|Equal6~3_combout\);

-- Location: LCCOMB_X43_Y15_N30
\Inst_vga|Equal6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Equal6~5_combout\ = (\Inst_vga|Equal6~2_combout\ & (\Inst_vga|Equal6~1_combout\ & (\Inst_vga|Equal6~4_combout\ & \Inst_vga|Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal6~2_combout\,
	datab => \Inst_vga|Equal6~1_combout\,
	datac => \Inst_vga|Equal6~4_combout\,
	datad => \Inst_vga|Equal6~3_combout\,
	combout => \Inst_vga|Equal6~5_combout\);

-- Location: LCCOMB_X42_Y15_N24
\Inst_vga|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|process_0~0_combout\ = (\Inst_vga|Equal6~0_combout\ & ((\Inst_vga|Equal6~5_combout\) # ((\Inst_vga|Equal5~0_combout\ & \Inst_vga|Equal5~5_combout\)))) # (!\Inst_vga|Equal6~0_combout\ & (\Inst_vga|Equal5~0_combout\ & 
-- (\Inst_vga|Equal5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal6~0_combout\,
	datab => \Inst_vga|Equal5~0_combout\,
	datac => \Inst_vga|Equal5~5_combout\,
	datad => \Inst_vga|Equal6~5_combout\,
	combout => \Inst_vga|process_0~0_combout\);

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OV7670_D[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OV7670_D(0),
	combout => \OV7670_D~combout\(0));

-- Location: LCCOMB_X20_Y32_N2
\capture|d_latch[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|d_latch[0]~feeder_combout\ = \OV7670_D~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OV7670_D~combout\(0),
	combout => \capture|d_latch[0]~feeder_combout\);

-- Location: LCFF_X20_Y32_N3
\capture|d_latch[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|d_latch[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|d_latch\(0));

-- Location: LCCOMB_X20_Y32_N12
\capture|hold_red[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|hold_red[0]~feeder_combout\ = \capture|d_latch\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \capture|d_latch\(0),
	combout => \capture|hold_red[0]~feeder_combout\);

-- Location: LCFF_X20_Y32_N13
\capture|hold_red[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|hold_red[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|hold_red\(0));

-- Location: LCCOMB_X21_Y30_N16
\capture|dout[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|dout[5]~feeder_combout\ = \capture|hold_red\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \capture|hold_red\(0),
	combout => \capture|dout[5]~feeder_combout\);

-- Location: LCFF_X21_Y30_N17
\capture|dout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|dout[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|dout\(5));

-- Location: M4K_X52_Y30
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode924w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode924w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode924w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y21
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode934w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode934w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode934w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y19_N30
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~1_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~0_combout\ & (((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61~portadataout\)) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1)))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~0_combout\ & (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~0_combout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a53~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a61~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~1_combout\);

-- Location: M4K_X26_Y25
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode857w\(3),
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y19_N24
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~2_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21~portadataout\) # 
-- ((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0))))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5~portadataout\ & 
-- !\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a21~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a5~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~2_combout\);

-- Location: M4K_X52_Y28
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode894w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode894w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode894w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y19_N18
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~3_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~2_combout\ & 
-- ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29~portadataout\))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~2_combout\ & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13~portadataout\)))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a13~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~2_combout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a29~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~3_combout\);

-- Location: LCCOMB_X40_Y19_N12
\Inst_vga|vga_red~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_red~0_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & (\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~1_combout\)) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~1_combout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2),
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~3_combout\,
	combout => \Inst_vga|vga_red~0_combout\);

-- Location: LCCOMB_X41_Y15_N16
\Inst_vga|vga_red~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_red~1_combout\ = (\Inst_vga|blank~regout\ & ((\Inst_vga|Equal2~0_combout\) # ((\Inst_vga|process_0~0_combout\) # (\Inst_vga|vga_red~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal2~0_combout\,
	datab => \Inst_vga|process_0~0_combout\,
	datac => \Inst_vga|blank~regout\,
	datad => \Inst_vga|vga_red~0_combout\,
	combout => \Inst_vga|vga_red~1_combout\);

-- Location: LCCOMB_X42_Y13_N30
\Inst_vga|jMin[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|jMin[8]~3_combout\ = !\Inst_vga|hCounter\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga|hCounter\(8),
	combout => \Inst_vga|jMin[8]~3_combout\);

-- Location: LCCOMB_X40_Y13_N22
\Inst_vga|jMin[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|jMin[10]~1_combout\ = !\Inst_vga|hCounter\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga|hCounter\(10),
	combout => \Inst_vga|jMin[10]~1_combout\);

-- Location: LCFF_X41_Y13_N17
\Inst_vga|jMin[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|jMin[10]~1_combout\,
	sload => VCC,
	ena => \Inst_vga|jMin[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMin\(10));

-- Location: LCCOMB_X40_Y13_N28
\Inst_vga|jMin[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|jMin[9]~2_combout\ = !\Inst_vga|hCounter\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|hCounter\(9),
	combout => \Inst_vga|jMin[9]~2_combout\);

-- Location: LCFF_X41_Y13_N25
\Inst_vga|jMin[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|jMin[9]~2_combout\,
	sload => VCC,
	ena => \Inst_vga|jMin[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMin\(9));

-- Location: LCCOMB_X40_Y13_N26
\Inst_vga|jMin[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|jMin[7]~4_combout\ = !\Inst_vga|hCounter\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|hCounter\(7),
	combout => \Inst_vga|jMin[7]~4_combout\);

-- Location: LCFF_X41_Y13_N15
\Inst_vga|jMin[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|jMin[7]~4_combout\,
	sload => VCC,
	ena => \Inst_vga|jMin[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMin\(7));

-- Location: LCCOMB_X42_Y13_N2
\Inst_vga|jMin[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|jMin[6]~5_combout\ = !\Inst_vga|hCounter\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|hCounter\(6),
	combout => \Inst_vga|jMin[6]~5_combout\);

-- Location: LCFF_X41_Y13_N27
\Inst_vga|jMin[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|jMin[6]~5_combout\,
	sload => VCC,
	ena => \Inst_vga|jMin[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMin\(6));

-- Location: LCCOMB_X40_Y13_N24
\Inst_vga|jMin[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|jMin[5]~6_combout\ = !\Inst_vga|hCounter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|hCounter\(5),
	combout => \Inst_vga|jMin[5]~6_combout\);

-- Location: LCFF_X41_Y13_N19
\Inst_vga|jMin[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|jMin[5]~6_combout\,
	sload => VCC,
	ena => \Inst_vga|jMin[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMin\(5));

-- Location: LCCOMB_X41_Y13_N28
\Inst_vga|jMin[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|jMin[4]~7_combout\ = !\Inst_vga|hCounter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|hCounter\(4),
	combout => \Inst_vga|jMin[4]~7_combout\);

-- Location: LCFF_X41_Y13_N29
\Inst_vga|jMin[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|jMin[4]~7_combout\,
	ena => \Inst_vga|jMin[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMin\(4));

-- Location: LCCOMB_X40_Y13_N30
\Inst_vga|jMin[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|jMin[3]~8_combout\ = !\Inst_vga|hCounter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|hCounter\(3),
	combout => \Inst_vga|jMin[3]~8_combout\);

-- Location: LCFF_X41_Y13_N13
\Inst_vga|jMin[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|jMin[3]~8_combout\,
	sload => VCC,
	ena => \Inst_vga|jMin[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMin\(3));

-- Location: LCFF_X42_Y14_N7
\Inst_vga|hCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|hCounter\(1));

-- Location: LCCOMB_X43_Y13_N0
\Inst_vga|jMin[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|jMin[1]~10_combout\ = !\Inst_vga|hCounter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga|hCounter\(1),
	combout => \Inst_vga|jMin[1]~10_combout\);

-- Location: LCFF_X42_Y13_N31
\Inst_vga|jMin[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|jMin[1]~10_combout\,
	sload => VCC,
	ena => \Inst_vga|jMin[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMin\(1));

-- Location: LCCOMB_X42_Y13_N6
\Inst_vga|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan4~1_cout\ = CARRY((!\Inst_vga|jMin\(0) & !\controller|sys_clk~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMin\(0),
	datab => \controller|sys_clk~regout\,
	datad => VCC,
	cout => \Inst_vga|LessThan4~1_cout\);

-- Location: LCCOMB_X42_Y13_N8
\Inst_vga|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan4~3_cout\ = CARRY((\Inst_vga|hCounter\(1) & ((\Inst_vga|jMin\(1)) # (!\Inst_vga|LessThan4~1_cout\))) # (!\Inst_vga|hCounter\(1) & (\Inst_vga|jMin\(1) & !\Inst_vga|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(1),
	datab => \Inst_vga|jMin\(1),
	datad => VCC,
	cin => \Inst_vga|LessThan4~1_cout\,
	cout => \Inst_vga|LessThan4~3_cout\);

-- Location: LCCOMB_X42_Y13_N10
\Inst_vga|LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan4~5_cout\ = CARRY((\Inst_vga|jMin\(2) & (!\Inst_vga|hCounter\(2) & !\Inst_vga|LessThan4~3_cout\)) # (!\Inst_vga|jMin\(2) & ((!\Inst_vga|LessThan4~3_cout\) # (!\Inst_vga|hCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMin\(2),
	datab => \Inst_vga|hCounter\(2),
	datad => VCC,
	cin => \Inst_vga|LessThan4~3_cout\,
	cout => \Inst_vga|LessThan4~5_cout\);

-- Location: LCCOMB_X42_Y13_N12
\Inst_vga|LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan4~7_cout\ = CARRY((\Inst_vga|hCounter\(3) & ((\Inst_vga|jMin\(3)) # (!\Inst_vga|LessThan4~5_cout\))) # (!\Inst_vga|hCounter\(3) & (\Inst_vga|jMin\(3) & !\Inst_vga|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(3),
	datab => \Inst_vga|jMin\(3),
	datad => VCC,
	cin => \Inst_vga|LessThan4~5_cout\,
	cout => \Inst_vga|LessThan4~7_cout\);

-- Location: LCCOMB_X42_Y13_N14
\Inst_vga|LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan4~9_cout\ = CARRY((\Inst_vga|hCounter\(4) & (!\Inst_vga|jMin\(4) & !\Inst_vga|LessThan4~7_cout\)) # (!\Inst_vga|hCounter\(4) & ((!\Inst_vga|LessThan4~7_cout\) # (!\Inst_vga|jMin\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(4),
	datab => \Inst_vga|jMin\(4),
	datad => VCC,
	cin => \Inst_vga|LessThan4~7_cout\,
	cout => \Inst_vga|LessThan4~9_cout\);

-- Location: LCCOMB_X42_Y13_N16
\Inst_vga|LessThan4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan4~11_cout\ = CARRY((\Inst_vga|hCounter\(5) & ((\Inst_vga|jMin\(5)) # (!\Inst_vga|LessThan4~9_cout\))) # (!\Inst_vga|hCounter\(5) & (\Inst_vga|jMin\(5) & !\Inst_vga|LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(5),
	datab => \Inst_vga|jMin\(5),
	datad => VCC,
	cin => \Inst_vga|LessThan4~9_cout\,
	cout => \Inst_vga|LessThan4~11_cout\);

-- Location: LCCOMB_X42_Y13_N18
\Inst_vga|LessThan4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan4~13_cout\ = CARRY((\Inst_vga|hCounter\(6) & (!\Inst_vga|jMin\(6) & !\Inst_vga|LessThan4~11_cout\)) # (!\Inst_vga|hCounter\(6) & ((!\Inst_vga|LessThan4~11_cout\) # (!\Inst_vga|jMin\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(6),
	datab => \Inst_vga|jMin\(6),
	datad => VCC,
	cin => \Inst_vga|LessThan4~11_cout\,
	cout => \Inst_vga|LessThan4~13_cout\);

-- Location: LCCOMB_X42_Y13_N20
\Inst_vga|LessThan4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan4~15_cout\ = CARRY((\Inst_vga|hCounter\(7) & ((\Inst_vga|jMin\(7)) # (!\Inst_vga|LessThan4~13_cout\))) # (!\Inst_vga|hCounter\(7) & (\Inst_vga|jMin\(7) & !\Inst_vga|LessThan4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(7),
	datab => \Inst_vga|jMin\(7),
	datad => VCC,
	cin => \Inst_vga|LessThan4~13_cout\,
	cout => \Inst_vga|LessThan4~15_cout\);

-- Location: LCCOMB_X42_Y13_N22
\Inst_vga|LessThan4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan4~17_cout\ = CARRY((\Inst_vga|jMin\(8) & (!\Inst_vga|hCounter\(8) & !\Inst_vga|LessThan4~15_cout\)) # (!\Inst_vga|jMin\(8) & ((!\Inst_vga|LessThan4~15_cout\) # (!\Inst_vga|hCounter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMin\(8),
	datab => \Inst_vga|hCounter\(8),
	datad => VCC,
	cin => \Inst_vga|LessThan4~15_cout\,
	cout => \Inst_vga|LessThan4~17_cout\);

-- Location: LCCOMB_X42_Y13_N24
\Inst_vga|LessThan4~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan4~19_cout\ = CARRY((\Inst_vga|hCounter\(9) & ((\Inst_vga|jMin\(9)) # (!\Inst_vga|LessThan4~17_cout\))) # (!\Inst_vga|hCounter\(9) & (\Inst_vga|jMin\(9) & !\Inst_vga|LessThan4~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(9),
	datab => \Inst_vga|jMin\(9),
	datad => VCC,
	cin => \Inst_vga|LessThan4~17_cout\,
	cout => \Inst_vga|LessThan4~19_cout\);

-- Location: LCCOMB_X42_Y13_N26
\Inst_vga|LessThan4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan4~20_combout\ = (\Inst_vga|jMin\(10) & (!\Inst_vga|LessThan4~19_cout\ & !\Inst_vga|hCounter\(10))) # (!\Inst_vga|jMin\(10) & ((!\Inst_vga|hCounter\(10)) # (!\Inst_vga|LessThan4~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|jMin\(10),
	datad => \Inst_vga|hCounter\(10),
	cin => \Inst_vga|LessThan4~19_cout\,
	combout => \Inst_vga|LessThan4~20_combout\);

-- Location: LCCOMB_X41_Y15_N24
\Inst_vga|jMin[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|jMin[3]~0_combout\ = (!\Inst_vga|Equal0~3_combout\ & (\Inst_vga|blank~regout\ & (\Inst_vga|LessThan4~20_combout\ & \Inst_vga|iMin[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal0~3_combout\,
	datab => \Inst_vga|blank~regout\,
	datac => \Inst_vga|LessThan4~20_combout\,
	datad => \Inst_vga|iMin[3]~0_combout\,
	combout => \Inst_vga|jMin[3]~0_combout\);

-- Location: LCFF_X41_Y13_N23
\Inst_vga|jMin[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|jMin[8]~3_combout\,
	sload => VCC,
	ena => \Inst_vga|jMin[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMin\(8));

-- Location: LCCOMB_X41_Y13_N14
\Inst_vga|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add4~2_combout\ = (\Inst_vga|jMin\(4) & (!\Inst_vga|Add4~1\)) # (!\Inst_vga|jMin\(4) & (\Inst_vga|Add4~1\ & VCC))
-- \Inst_vga|Add4~3\ = CARRY((\Inst_vga|jMin\(4) & !\Inst_vga|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|jMin\(4),
	datad => VCC,
	cin => \Inst_vga|Add4~1\,
	combout => \Inst_vga|Add4~2_combout\,
	cout => \Inst_vga|Add4~3\);

-- Location: LCCOMB_X41_Y13_N18
\Inst_vga|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add4~6_combout\ = (\Inst_vga|jMin\(6) & (!\Inst_vga|Add4~5\)) # (!\Inst_vga|jMin\(6) & (\Inst_vga|Add4~5\ & VCC))
-- \Inst_vga|Add4~7\ = CARRY((\Inst_vga|jMin\(6) & !\Inst_vga|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|jMin\(6),
	datad => VCC,
	cin => \Inst_vga|Add4~5\,
	combout => \Inst_vga|Add4~6_combout\,
	cout => \Inst_vga|Add4~7\);

-- Location: LCCOMB_X41_Y13_N20
\Inst_vga|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add4~8_combout\ = (\Inst_vga|jMin\(7) & (\Inst_vga|Add4~7\ $ (GND))) # (!\Inst_vga|jMin\(7) & ((GND) # (!\Inst_vga|Add4~7\)))
-- \Inst_vga|Add4~9\ = CARRY((!\Inst_vga|Add4~7\) # (!\Inst_vga|jMin\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|jMin\(7),
	datad => VCC,
	cin => \Inst_vga|Add4~7\,
	combout => \Inst_vga|Add4~8_combout\,
	cout => \Inst_vga|Add4~9\);

-- Location: LCCOMB_X41_Y13_N22
\Inst_vga|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add4~10_combout\ = (\Inst_vga|jMin\(8) & (!\Inst_vga|Add4~9\)) # (!\Inst_vga|jMin\(8) & (\Inst_vga|Add4~9\ & VCC))
-- \Inst_vga|Add4~11\ = CARRY((\Inst_vga|jMin\(8) & !\Inst_vga|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|jMin\(8),
	datad => VCC,
	cin => \Inst_vga|Add4~9\,
	combout => \Inst_vga|Add4~10_combout\,
	cout => \Inst_vga|Add4~11\);

-- Location: LCCOMB_X41_Y13_N24
\Inst_vga|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add4~12_combout\ = (\Inst_vga|jMin\(9) & (\Inst_vga|Add4~11\ $ (GND))) # (!\Inst_vga|jMin\(9) & ((GND) # (!\Inst_vga|Add4~11\)))
-- \Inst_vga|Add4~13\ = CARRY((!\Inst_vga|Add4~11\) # (!\Inst_vga|jMin\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMin\(9),
	datad => VCC,
	cin => \Inst_vga|Add4~11\,
	combout => \Inst_vga|Add4~12_combout\,
	cout => \Inst_vga|Add4~13\);

-- Location: LCCOMB_X40_Y13_N0
\Inst_vga|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan8~1_cout\ = CARRY((!\Inst_vga|jMin\(0) & !\controller|sys_clk~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMin\(0),
	datab => \controller|sys_clk~regout\,
	datad => VCC,
	cout => \Inst_vga|LessThan8~1_cout\);

-- Location: LCCOMB_X40_Y13_N2
\Inst_vga|LessThan8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan8~3_cout\ = CARRY((\Inst_vga|jMin\(1) & ((\Inst_vga|hCounter\(1)) # (!\Inst_vga|LessThan8~1_cout\))) # (!\Inst_vga|jMin\(1) & (\Inst_vga|hCounter\(1) & !\Inst_vga|LessThan8~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMin\(1),
	datab => \Inst_vga|hCounter\(1),
	datad => VCC,
	cin => \Inst_vga|LessThan8~1_cout\,
	cout => \Inst_vga|LessThan8~3_cout\);

-- Location: LCCOMB_X40_Y13_N4
\Inst_vga|LessThan8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan8~5_cout\ = CARRY((\Inst_vga|jMin\(2) & (!\Inst_vga|hCounter\(2) & !\Inst_vga|LessThan8~3_cout\)) # (!\Inst_vga|jMin\(2) & ((!\Inst_vga|LessThan8~3_cout\) # (!\Inst_vga|hCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMin\(2),
	datab => \Inst_vga|hCounter\(2),
	datad => VCC,
	cin => \Inst_vga|LessThan8~3_cout\,
	cout => \Inst_vga|LessThan8~5_cout\);

-- Location: LCCOMB_X40_Y13_N6
\Inst_vga|LessThan8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan8~7_cout\ = CARRY((\Inst_vga|Add4~0_combout\ & (\Inst_vga|hCounter\(3) & !\Inst_vga|LessThan8~5_cout\)) # (!\Inst_vga|Add4~0_combout\ & ((\Inst_vga|hCounter\(3)) # (!\Inst_vga|LessThan8~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add4~0_combout\,
	datab => \Inst_vga|hCounter\(3),
	datad => VCC,
	cin => \Inst_vga|LessThan8~5_cout\,
	cout => \Inst_vga|LessThan8~7_cout\);

-- Location: LCCOMB_X40_Y13_N8
\Inst_vga|LessThan8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan8~9_cout\ = CARRY((\Inst_vga|hCounter\(4) & (\Inst_vga|Add4~2_combout\ & !\Inst_vga|LessThan8~7_cout\)) # (!\Inst_vga|hCounter\(4) & ((\Inst_vga|Add4~2_combout\) # (!\Inst_vga|LessThan8~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(4),
	datab => \Inst_vga|Add4~2_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan8~7_cout\,
	cout => \Inst_vga|LessThan8~9_cout\);

-- Location: LCCOMB_X40_Y13_N10
\Inst_vga|LessThan8~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan8~11_cout\ = CARRY((\Inst_vga|Add4~4_combout\ & (\Inst_vga|hCounter\(5) & !\Inst_vga|LessThan8~9_cout\)) # (!\Inst_vga|Add4~4_combout\ & ((\Inst_vga|hCounter\(5)) # (!\Inst_vga|LessThan8~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add4~4_combout\,
	datab => \Inst_vga|hCounter\(5),
	datad => VCC,
	cin => \Inst_vga|LessThan8~9_cout\,
	cout => \Inst_vga|LessThan8~11_cout\);

-- Location: LCCOMB_X40_Y13_N12
\Inst_vga|LessThan8~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan8~13_cout\ = CARRY((\Inst_vga|hCounter\(6) & (\Inst_vga|Add4~6_combout\ & !\Inst_vga|LessThan8~11_cout\)) # (!\Inst_vga|hCounter\(6) & ((\Inst_vga|Add4~6_combout\) # (!\Inst_vga|LessThan8~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(6),
	datab => \Inst_vga|Add4~6_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan8~11_cout\,
	cout => \Inst_vga|LessThan8~13_cout\);

-- Location: LCCOMB_X40_Y13_N14
\Inst_vga|LessThan8~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan8~15_cout\ = CARRY((\Inst_vga|hCounter\(7) & ((!\Inst_vga|LessThan8~13_cout\) # (!\Inst_vga|Add4~8_combout\))) # (!\Inst_vga|hCounter\(7) & (!\Inst_vga|Add4~8_combout\ & !\Inst_vga|LessThan8~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(7),
	datab => \Inst_vga|Add4~8_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan8~13_cout\,
	cout => \Inst_vga|LessThan8~15_cout\);

-- Location: LCCOMB_X40_Y13_N16
\Inst_vga|LessThan8~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan8~17_cout\ = CARRY((\Inst_vga|hCounter\(8) & (\Inst_vga|Add4~10_combout\ & !\Inst_vga|LessThan8~15_cout\)) # (!\Inst_vga|hCounter\(8) & ((\Inst_vga|Add4~10_combout\) # (!\Inst_vga|LessThan8~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(8),
	datab => \Inst_vga|Add4~10_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan8~15_cout\,
	cout => \Inst_vga|LessThan8~17_cout\);

-- Location: LCCOMB_X40_Y13_N18
\Inst_vga|LessThan8~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan8~19_cout\ = CARRY((\Inst_vga|hCounter\(9) & ((!\Inst_vga|LessThan8~17_cout\) # (!\Inst_vga|Add4~12_combout\))) # (!\Inst_vga|hCounter\(9) & (!\Inst_vga|Add4~12_combout\ & !\Inst_vga|LessThan8~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(9),
	datab => \Inst_vga|Add4~12_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan8~17_cout\,
	cout => \Inst_vga|LessThan8~19_cout\);

-- Location: LCCOMB_X40_Y13_N20
\Inst_vga|LessThan8~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan8~20_combout\ = (\Inst_vga|Add4~14_combout\ & ((!\Inst_vga|hCounter\(10)) # (!\Inst_vga|LessThan8~19_cout\))) # (!\Inst_vga|Add4~14_combout\ & (!\Inst_vga|LessThan8~19_cout\ & !\Inst_vga|hCounter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add4~14_combout\,
	datad => \Inst_vga|hCounter\(10),
	cin => \Inst_vga|LessThan8~19_cout\,
	combout => \Inst_vga|LessThan8~20_combout\);

-- Location: LCFF_X45_Y15_N9
\Inst_vga|iMax[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|vCounter\(5),
	sload => VCC,
	ena => \Inst_vga|iMax[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMax\(5));

-- Location: LCCOMB_X44_Y14_N10
\Inst_vga|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan5~1_cout\ = CARRY((\controller|sys_clk~regout\ & !\Inst_vga|iMax\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|sys_clk~regout\,
	datab => \Inst_vga|iMax\(0),
	datad => VCC,
	cout => \Inst_vga|LessThan5~1_cout\);

-- Location: LCCOMB_X44_Y14_N12
\Inst_vga|LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan5~3_cout\ = CARRY((\Inst_vga|hCounter\(1) & (\Inst_vga|iMax\(1) & !\Inst_vga|LessThan5~1_cout\)) # (!\Inst_vga|hCounter\(1) & ((\Inst_vga|iMax\(1)) # (!\Inst_vga|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(1),
	datab => \Inst_vga|iMax\(1),
	datad => VCC,
	cin => \Inst_vga|LessThan5~1_cout\,
	cout => \Inst_vga|LessThan5~3_cout\);

-- Location: LCCOMB_X44_Y14_N14
\Inst_vga|LessThan5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan5~5_cout\ = CARRY((\Inst_vga|iMax\(2) & (\Inst_vga|hCounter\(2) & !\Inst_vga|LessThan5~3_cout\)) # (!\Inst_vga|iMax\(2) & ((\Inst_vga|hCounter\(2)) # (!\Inst_vga|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(2),
	datab => \Inst_vga|hCounter\(2),
	datad => VCC,
	cin => \Inst_vga|LessThan5~3_cout\,
	cout => \Inst_vga|LessThan5~5_cout\);

-- Location: LCCOMB_X44_Y14_N16
\Inst_vga|LessThan5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan5~7_cout\ = CARRY((\Inst_vga|hCounter\(3) & (\Inst_vga|iMax\(3) & !\Inst_vga|LessThan5~5_cout\)) # (!\Inst_vga|hCounter\(3) & ((\Inst_vga|iMax\(3)) # (!\Inst_vga|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(3),
	datab => \Inst_vga|iMax\(3),
	datad => VCC,
	cin => \Inst_vga|LessThan5~5_cout\,
	cout => \Inst_vga|LessThan5~7_cout\);

-- Location: LCCOMB_X44_Y14_N18
\Inst_vga|LessThan5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan5~9_cout\ = CARRY((\Inst_vga|iMax\(4) & (\Inst_vga|hCounter\(4) & !\Inst_vga|LessThan5~7_cout\)) # (!\Inst_vga|iMax\(4) & ((\Inst_vga|hCounter\(4)) # (!\Inst_vga|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(4),
	datab => \Inst_vga|hCounter\(4),
	datad => VCC,
	cin => \Inst_vga|LessThan5~7_cout\,
	cout => \Inst_vga|LessThan5~9_cout\);

-- Location: LCCOMB_X44_Y14_N20
\Inst_vga|LessThan5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan5~11_cout\ = CARRY((\Inst_vga|hCounter\(5) & (\Inst_vga|iMax\(5) & !\Inst_vga|LessThan5~9_cout\)) # (!\Inst_vga|hCounter\(5) & ((\Inst_vga|iMax\(5)) # (!\Inst_vga|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(5),
	datab => \Inst_vga|iMax\(5),
	datad => VCC,
	cin => \Inst_vga|LessThan5~9_cout\,
	cout => \Inst_vga|LessThan5~11_cout\);

-- Location: LCCOMB_X44_Y14_N22
\Inst_vga|LessThan5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan5~13_cout\ = CARRY((\Inst_vga|iMax\(6) & (\Inst_vga|hCounter\(6) & !\Inst_vga|LessThan5~11_cout\)) # (!\Inst_vga|iMax\(6) & ((\Inst_vga|hCounter\(6)) # (!\Inst_vga|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(6),
	datab => \Inst_vga|hCounter\(6),
	datad => VCC,
	cin => \Inst_vga|LessThan5~11_cout\,
	cout => \Inst_vga|LessThan5~13_cout\);

-- Location: LCCOMB_X44_Y14_N24
\Inst_vga|LessThan5~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan5~15_cout\ = CARRY((\Inst_vga|iMax\(7) & ((!\Inst_vga|LessThan5~13_cout\) # (!\Inst_vga|hCounter\(7)))) # (!\Inst_vga|iMax\(7) & (!\Inst_vga|hCounter\(7) & !\Inst_vga|LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(7),
	datab => \Inst_vga|hCounter\(7),
	datad => VCC,
	cin => \Inst_vga|LessThan5~13_cout\,
	cout => \Inst_vga|LessThan5~15_cout\);

-- Location: LCCOMB_X44_Y14_N26
\Inst_vga|LessThan5~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan5~17_cout\ = CARRY((\Inst_vga|iMax\(8) & (\Inst_vga|hCounter\(8) & !\Inst_vga|LessThan5~15_cout\)) # (!\Inst_vga|iMax\(8) & ((\Inst_vga|hCounter\(8)) # (!\Inst_vga|LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(8),
	datab => \Inst_vga|hCounter\(8),
	datad => VCC,
	cin => \Inst_vga|LessThan5~15_cout\,
	cout => \Inst_vga|LessThan5~17_cout\);

-- Location: LCCOMB_X44_Y14_N28
\Inst_vga|LessThan5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan5~18_combout\ = (\Inst_vga|hCounter\(9) & ((\Inst_vga|LessThan5~17_cout\) # (!\Inst_vga|iMax\(9)))) # (!\Inst_vga|hCounter\(9) & (!\Inst_vga|iMax\(9) & \Inst_vga|LessThan5~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(9),
	datab => \Inst_vga|iMax\(9),
	cin => \Inst_vga|LessThan5~17_cout\,
	combout => \Inst_vga|LessThan5~18_combout\);

-- Location: LCCOMB_X41_Y14_N30
\Inst_vga|jMax[10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|jMax[10]~0_combout\ = (!\Inst_vga|Equal0~3_combout\ & (\Inst_vga|iMin[3]~1_combout\ & ((\Inst_vga|hCounter\(10)) # (\Inst_vga|LessThan5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(10),
	datab => \Inst_vga|LessThan5~18_combout\,
	datac => \Inst_vga|Equal0~3_combout\,
	datad => \Inst_vga|iMin[3]~1_combout\,
	combout => \Inst_vga|jMax[10]~0_combout\);

-- Location: LCFF_X41_Y14_N19
\Inst_vga|jMax[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|hCounter\(10),
	sload => VCC,
	ena => \Inst_vga|jMax[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMax\(10));

-- Location: LCFF_X41_Y14_N15
\Inst_vga|jMax[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|hCounter\(8),
	sload => VCC,
	ena => \Inst_vga|jMax[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMax\(8));

-- Location: LCFF_X41_Y14_N9
\Inst_vga|jMax[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|hCounter\(5),
	sload => VCC,
	ena => \Inst_vga|jMax[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMax\(5));

-- Location: LCFF_X41_Y14_N5
\Inst_vga|jMax[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|hCounter\(3),
	sload => VCC,
	ena => \Inst_vga|jMax[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMax\(3));

-- Location: LCCOMB_X41_Y14_N4
\Inst_vga|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add5~0_combout\ = \Inst_vga|jMax\(3) $ (VCC)
-- \Inst_vga|Add5~1\ = CARRY(\Inst_vga|jMax\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|jMax\(3),
	datad => VCC,
	combout => \Inst_vga|Add5~0_combout\,
	cout => \Inst_vga|Add5~1\);

-- Location: LCCOMB_X41_Y14_N6
\Inst_vga|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add5~2_combout\ = (\Inst_vga|jMax\(4) & (!\Inst_vga|Add5~1\)) # (!\Inst_vga|jMax\(4) & ((\Inst_vga|Add5~1\) # (GND)))
-- \Inst_vga|Add5~3\ = CARRY((!\Inst_vga|Add5~1\) # (!\Inst_vga|jMax\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMax\(4),
	datad => VCC,
	cin => \Inst_vga|Add5~1\,
	combout => \Inst_vga|Add5~2_combout\,
	cout => \Inst_vga|Add5~3\);

-- Location: LCCOMB_X41_Y14_N8
\Inst_vga|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add5~4_combout\ = (\Inst_vga|jMax\(5) & (\Inst_vga|Add5~3\ $ (GND))) # (!\Inst_vga|jMax\(5) & (!\Inst_vga|Add5~3\ & VCC))
-- \Inst_vga|Add5~5\ = CARRY((\Inst_vga|jMax\(5) & !\Inst_vga|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|jMax\(5),
	datad => VCC,
	cin => \Inst_vga|Add5~3\,
	combout => \Inst_vga|Add5~4_combout\,
	cout => \Inst_vga|Add5~5\);

-- Location: LCCOMB_X41_Y14_N10
\Inst_vga|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add5~6_combout\ = (\Inst_vga|jMax\(6) & (!\Inst_vga|Add5~5\)) # (!\Inst_vga|jMax\(6) & ((\Inst_vga|Add5~5\) # (GND)))
-- \Inst_vga|Add5~7\ = CARRY((!\Inst_vga|Add5~5\) # (!\Inst_vga|jMax\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMax\(6),
	datad => VCC,
	cin => \Inst_vga|Add5~5\,
	combout => \Inst_vga|Add5~6_combout\,
	cout => \Inst_vga|Add5~7\);

-- Location: LCCOMB_X41_Y14_N12
\Inst_vga|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add5~8_combout\ = (\Inst_vga|jMax\(7) & (\Inst_vga|Add5~7\ $ (GND))) # (!\Inst_vga|jMax\(7) & (!\Inst_vga|Add5~7\ & VCC))
-- \Inst_vga|Add5~9\ = CARRY((\Inst_vga|jMax\(7) & !\Inst_vga|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMax\(7),
	datad => VCC,
	cin => \Inst_vga|Add5~7\,
	combout => \Inst_vga|Add5~8_combout\,
	cout => \Inst_vga|Add5~9\);

-- Location: LCCOMB_X41_Y14_N18
\Inst_vga|Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add5~14_combout\ = \Inst_vga|Add5~13\ $ (\Inst_vga|jMax\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga|jMax\(10),
	cin => \Inst_vga|Add5~13\,
	combout => \Inst_vga|Add5~14_combout\);

-- Location: LCFF_X41_Y14_N29
\Inst_vga|jMax[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|hCounter\(2),
	sload => VCC,
	ena => \Inst_vga|jMax[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMax\(2));

-- Location: LCCOMB_X40_Y14_N0
\Inst_vga|LessThan9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan9~1_cout\ = CARRY((!\Inst_vga|jMax\(0) & \controller|sys_clk~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMax\(0),
	datab => \controller|sys_clk~regout\,
	datad => VCC,
	cout => \Inst_vga|LessThan9~1_cout\);

-- Location: LCCOMB_X40_Y14_N2
\Inst_vga|LessThan9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan9~3_cout\ = CARRY((\Inst_vga|jMax\(1) & ((!\Inst_vga|LessThan9~1_cout\) # (!\Inst_vga|hCounter\(1)))) # (!\Inst_vga|jMax\(1) & (!\Inst_vga|hCounter\(1) & !\Inst_vga|LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMax\(1),
	datab => \Inst_vga|hCounter\(1),
	datad => VCC,
	cin => \Inst_vga|LessThan9~1_cout\,
	cout => \Inst_vga|LessThan9~3_cout\);

-- Location: LCCOMB_X40_Y14_N4
\Inst_vga|LessThan9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan9~5_cout\ = CARRY((\Inst_vga|hCounter\(2) & ((!\Inst_vga|LessThan9~3_cout\) # (!\Inst_vga|jMax\(2)))) # (!\Inst_vga|hCounter\(2) & (!\Inst_vga|jMax\(2) & !\Inst_vga|LessThan9~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(2),
	datab => \Inst_vga|jMax\(2),
	datad => VCC,
	cin => \Inst_vga|LessThan9~3_cout\,
	cout => \Inst_vga|LessThan9~5_cout\);

-- Location: LCCOMB_X40_Y14_N6
\Inst_vga|LessThan9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan9~7_cout\ = CARRY((\Inst_vga|Add5~0_combout\ & ((!\Inst_vga|LessThan9~5_cout\) # (!\Inst_vga|hCounter\(3)))) # (!\Inst_vga|Add5~0_combout\ & (!\Inst_vga|hCounter\(3) & !\Inst_vga|LessThan9~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add5~0_combout\,
	datab => \Inst_vga|hCounter\(3),
	datad => VCC,
	cin => \Inst_vga|LessThan9~5_cout\,
	cout => \Inst_vga|LessThan9~7_cout\);

-- Location: LCCOMB_X40_Y14_N8
\Inst_vga|LessThan9~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan9~9_cout\ = CARRY((\Inst_vga|Add5~2_combout\ & (\Inst_vga|hCounter\(4) & !\Inst_vga|LessThan9~7_cout\)) # (!\Inst_vga|Add5~2_combout\ & ((\Inst_vga|hCounter\(4)) # (!\Inst_vga|LessThan9~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add5~2_combout\,
	datab => \Inst_vga|hCounter\(4),
	datad => VCC,
	cin => \Inst_vga|LessThan9~7_cout\,
	cout => \Inst_vga|LessThan9~9_cout\);

-- Location: LCCOMB_X40_Y14_N10
\Inst_vga|LessThan9~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan9~11_cout\ = CARRY((\Inst_vga|hCounter\(5) & (\Inst_vga|Add5~4_combout\ & !\Inst_vga|LessThan9~9_cout\)) # (!\Inst_vga|hCounter\(5) & ((\Inst_vga|Add5~4_combout\) # (!\Inst_vga|LessThan9~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(5),
	datab => \Inst_vga|Add5~4_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan9~9_cout\,
	cout => \Inst_vga|LessThan9~11_cout\);

-- Location: LCCOMB_X40_Y14_N12
\Inst_vga|LessThan9~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan9~13_cout\ = CARRY((\Inst_vga|hCounter\(6) & ((!\Inst_vga|LessThan9~11_cout\) # (!\Inst_vga|Add5~6_combout\))) # (!\Inst_vga|hCounter\(6) & (!\Inst_vga|Add5~6_combout\ & !\Inst_vga|LessThan9~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(6),
	datab => \Inst_vga|Add5~6_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan9~11_cout\,
	cout => \Inst_vga|LessThan9~13_cout\);

-- Location: LCCOMB_X40_Y14_N14
\Inst_vga|LessThan9~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan9~15_cout\ = CARRY((\Inst_vga|hCounter\(7) & (\Inst_vga|Add5~8_combout\ & !\Inst_vga|LessThan9~13_cout\)) # (!\Inst_vga|hCounter\(7) & ((\Inst_vga|Add5~8_combout\) # (!\Inst_vga|LessThan9~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(7),
	datab => \Inst_vga|Add5~8_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan9~13_cout\,
	cout => \Inst_vga|LessThan9~15_cout\);

-- Location: LCCOMB_X40_Y14_N16
\Inst_vga|LessThan9~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan9~17_cout\ = CARRY((\Inst_vga|Add5~10_combout\ & (\Inst_vga|hCounter\(8) & !\Inst_vga|LessThan9~15_cout\)) # (!\Inst_vga|Add5~10_combout\ & ((\Inst_vga|hCounter\(8)) # (!\Inst_vga|LessThan9~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add5~10_combout\,
	datab => \Inst_vga|hCounter\(8),
	datad => VCC,
	cin => \Inst_vga|LessThan9~15_cout\,
	cout => \Inst_vga|LessThan9~17_cout\);

-- Location: LCCOMB_X40_Y14_N18
\Inst_vga|LessThan9~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan9~19_cout\ = CARRY((\Inst_vga|Add5~12_combout\ & ((!\Inst_vga|LessThan9~17_cout\) # (!\Inst_vga|hCounter\(9)))) # (!\Inst_vga|Add5~12_combout\ & (!\Inst_vga|hCounter\(9) & !\Inst_vga|LessThan9~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add5~12_combout\,
	datab => \Inst_vga|hCounter\(9),
	datad => VCC,
	cin => \Inst_vga|LessThan9~17_cout\,
	cout => \Inst_vga|LessThan9~19_cout\);

-- Location: LCCOMB_X40_Y14_N20
\Inst_vga|LessThan9~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan9~20_combout\ = (\Inst_vga|hCounter\(10) & ((!\Inst_vga|Add5~14_combout\) # (!\Inst_vga|LessThan9~19_cout\))) # (!\Inst_vga|hCounter\(10) & (!\Inst_vga|LessThan9~19_cout\ & !\Inst_vga|Add5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|hCounter\(10),
	datad => \Inst_vga|Add5~14_combout\,
	cin => \Inst_vga|LessThan9~19_cout\,
	combout => \Inst_vga|LessThan9~20_combout\);

-- Location: LCFF_X45_Y15_N17
\Inst_vga|iMax[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|vCounter\(2),
	sload => VCC,
	ena => \Inst_vga|iMax[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMax\(2));

-- Location: LCCOMB_X46_Y15_N8
\Inst_vga|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan7~1_cout\ = CARRY((!\Inst_vga|iMax\(0) & \Inst_vga|vCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(0),
	datab => \Inst_vga|vCounter\(0),
	datad => VCC,
	cout => \Inst_vga|LessThan7~1_cout\);

-- Location: LCCOMB_X46_Y15_N10
\Inst_vga|LessThan7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan7~3_cout\ = CARRY((\Inst_vga|iMax\(1) & ((!\Inst_vga|LessThan7~1_cout\) # (!\Inst_vga|vCounter\(1)))) # (!\Inst_vga|iMax\(1) & (!\Inst_vga|vCounter\(1) & !\Inst_vga|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|iMax\(1),
	datab => \Inst_vga|vCounter\(1),
	datad => VCC,
	cin => \Inst_vga|LessThan7~1_cout\,
	cout => \Inst_vga|LessThan7~3_cout\);

-- Location: LCCOMB_X46_Y15_N12
\Inst_vga|LessThan7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan7~5_cout\ = CARRY((\Inst_vga|vCounter\(2) & ((!\Inst_vga|LessThan7~3_cout\) # (!\Inst_vga|iMax\(2)))) # (!\Inst_vga|vCounter\(2) & (!\Inst_vga|iMax\(2) & !\Inst_vga|LessThan7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(2),
	datab => \Inst_vga|iMax\(2),
	datad => VCC,
	cin => \Inst_vga|LessThan7~3_cout\,
	cout => \Inst_vga|LessThan7~5_cout\);

-- Location: LCCOMB_X46_Y15_N14
\Inst_vga|LessThan7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan7~7_cout\ = CARRY((\Inst_vga|vCounter\(3) & (\Inst_vga|Add2~0_combout\ & !\Inst_vga|LessThan7~5_cout\)) # (!\Inst_vga|vCounter\(3) & ((\Inst_vga|Add2~0_combout\) # (!\Inst_vga|LessThan7~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(3),
	datab => \Inst_vga|Add2~0_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan7~5_cout\,
	cout => \Inst_vga|LessThan7~7_cout\);

-- Location: LCCOMB_X46_Y15_N16
\Inst_vga|LessThan7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan7~9_cout\ = CARRY((\Inst_vga|vCounter\(4) & ((!\Inst_vga|LessThan7~7_cout\) # (!\Inst_vga|Add2~2_combout\))) # (!\Inst_vga|vCounter\(4) & (!\Inst_vga|Add2~2_combout\ & !\Inst_vga|LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(4),
	datab => \Inst_vga|Add2~2_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan7~7_cout\,
	cout => \Inst_vga|LessThan7~9_cout\);

-- Location: LCCOMB_X46_Y15_N18
\Inst_vga|LessThan7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan7~11_cout\ = CARRY((\Inst_vga|Add2~4_combout\ & ((!\Inst_vga|LessThan7~9_cout\) # (!\Inst_vga|vCounter\(5)))) # (!\Inst_vga|Add2~4_combout\ & (!\Inst_vga|vCounter\(5) & !\Inst_vga|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add2~4_combout\,
	datab => \Inst_vga|vCounter\(5),
	datad => VCC,
	cin => \Inst_vga|LessThan7~9_cout\,
	cout => \Inst_vga|LessThan7~11_cout\);

-- Location: LCCOMB_X46_Y15_N20
\Inst_vga|LessThan7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan7~13_cout\ = CARRY((\Inst_vga|vCounter\(6) & ((!\Inst_vga|LessThan7~11_cout\) # (!\Inst_vga|Add2~6_combout\))) # (!\Inst_vga|vCounter\(6) & (!\Inst_vga|Add2~6_combout\ & !\Inst_vga|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(6),
	datab => \Inst_vga|Add2~6_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan7~11_cout\,
	cout => \Inst_vga|LessThan7~13_cout\);

-- Location: LCCOMB_X46_Y15_N22
\Inst_vga|LessThan7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan7~15_cout\ = CARRY((\Inst_vga|vCounter\(7) & (\Inst_vga|Add2~8_combout\ & !\Inst_vga|LessThan7~13_cout\)) # (!\Inst_vga|vCounter\(7) & ((\Inst_vga|Add2~8_combout\) # (!\Inst_vga|LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(7),
	datab => \Inst_vga|Add2~8_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan7~13_cout\,
	cout => \Inst_vga|LessThan7~15_cout\);

-- Location: LCCOMB_X46_Y15_N24
\Inst_vga|LessThan7~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan7~17_cout\ = CARRY((\Inst_vga|vCounter\(8) & ((!\Inst_vga|LessThan7~15_cout\) # (!\Inst_vga|Add2~10_combout\))) # (!\Inst_vga|vCounter\(8) & (!\Inst_vga|Add2~10_combout\ & !\Inst_vga|LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(8),
	datab => \Inst_vga|Add2~10_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan7~15_cout\,
	cout => \Inst_vga|LessThan7~17_cout\);

-- Location: LCCOMB_X46_Y15_N26
\Inst_vga|LessThan7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan7~18_combout\ = (\Inst_vga|vCounter\(9) & ((\Inst_vga|LessThan7~17_cout\) # (!\Inst_vga|Add2~12_combout\))) # (!\Inst_vga|vCounter\(9) & (\Inst_vga|LessThan7~17_cout\ & !\Inst_vga|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga|vCounter\(9),
	datad => \Inst_vga|Add2~12_combout\,
	cin => \Inst_vga|LessThan7~17_cout\,
	combout => \Inst_vga|LessThan7~18_combout\);

-- Location: LCCOMB_X43_Y15_N18
\Inst_vga|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add3~12_combout\ = \Inst_vga|Add3~11\ $ (!\Inst_vga|iMin\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga|iMin\(9),
	cin => \Inst_vga|Add3~11\,
	combout => \Inst_vga|Add3~12_combout\);

-- Location: LCCOMB_X42_Y15_N26
\Inst_vga|iMin[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|iMin[2]~12_combout\ = !\Inst_vga|vCounter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|vCounter\(2),
	combout => \Inst_vga|iMin[2]~12_combout\);

-- Location: LCFF_X42_Y15_N27
\Inst_vga|iMin[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|iMin[2]~12_combout\,
	ena => \Inst_vga|iMin[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMin\(2));

-- Location: LCCOMB_X42_Y15_N2
\Inst_vga|iMin[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|iMin[0]~10_combout\ = !\Inst_vga|vCounter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga|vCounter\(0),
	combout => \Inst_vga|iMin[0]~10_combout\);

-- Location: LCFF_X42_Y15_N3
\Inst_vga|iMin[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|iMin[0]~10_combout\,
	ena => \Inst_vga|iMin[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|iMin\(0));

-- Location: LCCOMB_X42_Y15_N4
\Inst_vga|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan6~1_cout\ = CARRY((!\Inst_vga|vCounter\(0) & !\Inst_vga|iMin\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(0),
	datab => \Inst_vga|iMin\(0),
	datad => VCC,
	cout => \Inst_vga|LessThan6~1_cout\);

-- Location: LCCOMB_X42_Y15_N6
\Inst_vga|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan6~3_cout\ = CARRY((\Inst_vga|vCounter\(1) & ((\Inst_vga|iMin\(1)) # (!\Inst_vga|LessThan6~1_cout\))) # (!\Inst_vga|vCounter\(1) & (\Inst_vga|iMin\(1) & !\Inst_vga|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(1),
	datab => \Inst_vga|iMin\(1),
	datad => VCC,
	cin => \Inst_vga|LessThan6~1_cout\,
	cout => \Inst_vga|LessThan6~3_cout\);

-- Location: LCCOMB_X42_Y15_N8
\Inst_vga|LessThan6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan6~5_cout\ = CARRY((\Inst_vga|vCounter\(2) & (!\Inst_vga|iMin\(2) & !\Inst_vga|LessThan6~3_cout\)) # (!\Inst_vga|vCounter\(2) & ((!\Inst_vga|LessThan6~3_cout\) # (!\Inst_vga|iMin\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(2),
	datab => \Inst_vga|iMin\(2),
	datad => VCC,
	cin => \Inst_vga|LessThan6~3_cout\,
	cout => \Inst_vga|LessThan6~5_cout\);

-- Location: LCCOMB_X42_Y15_N10
\Inst_vga|LessThan6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan6~7_cout\ = CARRY((\Inst_vga|Add3~0_combout\ & (\Inst_vga|vCounter\(3) & !\Inst_vga|LessThan6~5_cout\)) # (!\Inst_vga|Add3~0_combout\ & ((\Inst_vga|vCounter\(3)) # (!\Inst_vga|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add3~0_combout\,
	datab => \Inst_vga|vCounter\(3),
	datad => VCC,
	cin => \Inst_vga|LessThan6~5_cout\,
	cout => \Inst_vga|LessThan6~7_cout\);

-- Location: LCCOMB_X42_Y15_N12
\Inst_vga|LessThan6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan6~9_cout\ = CARRY((\Inst_vga|vCounter\(4) & (\Inst_vga|Add3~2_combout\ & !\Inst_vga|LessThan6~7_cout\)) # (!\Inst_vga|vCounter\(4) & ((\Inst_vga|Add3~2_combout\) # (!\Inst_vga|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(4),
	datab => \Inst_vga|Add3~2_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan6~7_cout\,
	cout => \Inst_vga|LessThan6~9_cout\);

-- Location: LCCOMB_X42_Y15_N14
\Inst_vga|LessThan6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan6~11_cout\ = CARRY((\Inst_vga|vCounter\(5) & ((!\Inst_vga|LessThan6~9_cout\) # (!\Inst_vga|Add3~4_combout\))) # (!\Inst_vga|vCounter\(5) & (!\Inst_vga|Add3~4_combout\ & !\Inst_vga|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(5),
	datab => \Inst_vga|Add3~4_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan6~9_cout\,
	cout => \Inst_vga|LessThan6~11_cout\);

-- Location: LCCOMB_X42_Y15_N16
\Inst_vga|LessThan6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan6~13_cout\ = CARRY((\Inst_vga|vCounter\(6) & (\Inst_vga|Add3~6_combout\ & !\Inst_vga|LessThan6~11_cout\)) # (!\Inst_vga|vCounter\(6) & ((\Inst_vga|Add3~6_combout\) # (!\Inst_vga|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(6),
	datab => \Inst_vga|Add3~6_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan6~11_cout\,
	cout => \Inst_vga|LessThan6~13_cout\);

-- Location: LCCOMB_X42_Y15_N18
\Inst_vga|LessThan6~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan6~15_cout\ = CARRY((\Inst_vga|vCounter\(7) & ((!\Inst_vga|LessThan6~13_cout\) # (!\Inst_vga|Add3~8_combout\))) # (!\Inst_vga|vCounter\(7) & (!\Inst_vga|Add3~8_combout\ & !\Inst_vga|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(7),
	datab => \Inst_vga|Add3~8_combout\,
	datad => VCC,
	cin => \Inst_vga|LessThan6~13_cout\,
	cout => \Inst_vga|LessThan6~15_cout\);

-- Location: LCCOMB_X42_Y15_N20
\Inst_vga|LessThan6~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan6~17_cout\ = CARRY((\Inst_vga|Add3~10_combout\ & ((!\Inst_vga|LessThan6~15_cout\) # (!\Inst_vga|vCounter\(8)))) # (!\Inst_vga|Add3~10_combout\ & (!\Inst_vga|vCounter\(8) & !\Inst_vga|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add3~10_combout\,
	datab => \Inst_vga|vCounter\(8),
	datad => VCC,
	cin => \Inst_vga|LessThan6~15_cout\,
	cout => \Inst_vga|LessThan6~17_cout\);

-- Location: LCCOMB_X42_Y15_N22
\Inst_vga|LessThan6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan6~18_combout\ = (\Inst_vga|vCounter\(9) & (\Inst_vga|LessThan6~17_cout\ & \Inst_vga|Add3~12_combout\)) # (!\Inst_vga|vCounter\(9) & ((\Inst_vga|LessThan6~17_cout\) # (\Inst_vga|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(9),
	datad => \Inst_vga|Add3~12_combout\,
	cin => \Inst_vga|LessThan6~17_cout\,
	combout => \Inst_vga|LessThan6~18_combout\);

-- Location: LCCOMB_X41_Y15_N14
\Inst_vga|vga_green[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~15_combout\ = (\Inst_vga|LessThan7~18_combout\) # (\Inst_vga|LessThan6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga|LessThan7~18_combout\,
	datad => \Inst_vga|LessThan6~18_combout\,
	combout => \Inst_vga|vga_green[0]~15_combout\);

-- Location: LCCOMB_X41_Y14_N22
\Inst_vga|vga_green[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~1_combout\ = (\Inst_vga|hCounter\(6) & (\Inst_vga|Add5~6_combout\ & (\Inst_vga|hCounter\(7) $ (!\Inst_vga|Add5~8_combout\)))) # (!\Inst_vga|hCounter\(6) & (!\Inst_vga|Add5~6_combout\ & (\Inst_vga|hCounter\(7) $ 
-- (!\Inst_vga|Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(6),
	datab => \Inst_vga|hCounter\(7),
	datac => \Inst_vga|Add5~6_combout\,
	datad => \Inst_vga|Add5~8_combout\,
	combout => \Inst_vga|vga_green[0]~1_combout\);

-- Location: LCCOMB_X41_Y14_N20
\Inst_vga|vga_green[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~0_combout\ = (\Inst_vga|hCounter\(5) & (\Inst_vga|Add5~4_combout\ & (\Inst_vga|hCounter\(4) $ (!\Inst_vga|Add5~2_combout\)))) # (!\Inst_vga|hCounter\(5) & (!\Inst_vga|Add5~4_combout\ & (\Inst_vga|hCounter\(4) $ 
-- (!\Inst_vga|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(5),
	datab => \Inst_vga|hCounter\(4),
	datac => \Inst_vga|Add5~2_combout\,
	datad => \Inst_vga|Add5~4_combout\,
	combout => \Inst_vga|vga_green[0]~0_combout\);

-- Location: LCFF_X41_Y14_N3
\Inst_vga|jMax[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \controller|sys_clk~regout\,
	sload => VCC,
	ena => \Inst_vga|jMax[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMax\(0));

-- Location: LCFF_X40_Y14_N29
\Inst_vga|jMax[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	sdata => \Inst_vga|hCounter\(1),
	sload => VCC,
	ena => \Inst_vga|jMax[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|jMax\(1));

-- Location: LCCOMB_X41_Y14_N2
\Inst_vga|vga_green[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~3_combout\ = (\Inst_vga|hCounter\(1) & (\Inst_vga|jMax\(1) & (\controller|sys_clk~regout\ $ (!\Inst_vga|jMax\(0))))) # (!\Inst_vga|hCounter\(1) & (!\Inst_vga|jMax\(1) & (\controller|sys_clk~regout\ $ (!\Inst_vga|jMax\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(1),
	datab => \controller|sys_clk~regout\,
	datac => \Inst_vga|jMax\(0),
	datad => \Inst_vga|jMax\(1),
	combout => \Inst_vga|vga_green[0]~3_combout\);

-- Location: LCCOMB_X41_Y14_N28
\Inst_vga|vga_green[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~4_combout\ = (\Inst_vga|hCounter\(2) & (\Inst_vga|jMax\(2) & (\Inst_vga|hCounter\(3) $ (!\Inst_vga|Add5~0_combout\)))) # (!\Inst_vga|hCounter\(2) & (!\Inst_vga|jMax\(2) & (\Inst_vga|hCounter\(3) $ (!\Inst_vga|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(2),
	datab => \Inst_vga|hCounter\(3),
	datac => \Inst_vga|jMax\(2),
	datad => \Inst_vga|Add5~0_combout\,
	combout => \Inst_vga|vga_green[0]~4_combout\);

-- Location: LCCOMB_X41_Y14_N26
\Inst_vga|vga_green[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~5_combout\ = (\Inst_vga|vga_green[0]~3_combout\ & (\Inst_vga|vga_green[0]~4_combout\ & (\Inst_vga|hCounter\(10) $ (!\Inst_vga|Add5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(10),
	datab => \Inst_vga|vga_green[0]~3_combout\,
	datac => \Inst_vga|Add5~14_combout\,
	datad => \Inst_vga|vga_green[0]~4_combout\,
	combout => \Inst_vga|vga_green[0]~5_combout\);

-- Location: LCCOMB_X41_Y14_N0
\Inst_vga|vga_green[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~6_combout\ = (\Inst_vga|vga_green[0]~2_combout\ & (\Inst_vga|vga_green[0]~1_combout\ & (\Inst_vga|vga_green[0]~0_combout\ & \Inst_vga|vga_green[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vga_green[0]~2_combout\,
	datab => \Inst_vga|vga_green[0]~1_combout\,
	datac => \Inst_vga|vga_green[0]~0_combout\,
	datad => \Inst_vga|vga_green[0]~5_combout\,
	combout => \Inst_vga|vga_green[0]~6_combout\);

-- Location: LCCOMB_X41_Y13_N26
\Inst_vga|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|Add4~14_combout\ = \Inst_vga|jMin\(10) $ (\Inst_vga|Add4~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMin\(10),
	cin => \Inst_vga|Add4~13\,
	combout => \Inst_vga|Add4~14_combout\);

-- Location: LCCOMB_X42_Y13_N28
\Inst_vga|vga_green[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~10_combout\ = (\Inst_vga|jMin\(0) & (!\controller|sys_clk~regout\ & (\Inst_vga|jMin\(1) $ (\Inst_vga|hCounter\(1))))) # (!\Inst_vga|jMin\(0) & (\controller|sys_clk~regout\ & (\Inst_vga|jMin\(1) $ (\Inst_vga|hCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|jMin\(0),
	datab => \Inst_vga|jMin\(1),
	datac => \Inst_vga|hCounter\(1),
	datad => \controller|sys_clk~regout\,
	combout => \Inst_vga|vga_green[0]~10_combout\);

-- Location: LCCOMB_X41_Y13_N0
\Inst_vga|vga_green[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~12_combout\ = (\Inst_vga|vga_green[0]~11_combout\ & (\Inst_vga|vga_green[0]~10_combout\ & (\Inst_vga|hCounter\(10) $ (!\Inst_vga|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vga_green[0]~11_combout\,
	datab => \Inst_vga|hCounter\(10),
	datac => \Inst_vga|Add4~14_combout\,
	datad => \Inst_vga|vga_green[0]~10_combout\,
	combout => \Inst_vga|vga_green[0]~12_combout\);

-- Location: LCCOMB_X41_Y13_N4
\Inst_vga|vga_green[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~9_combout\ = (\Inst_vga|hCounter\(8) & (\Inst_vga|Add4~10_combout\ & (\Inst_vga|hCounter\(9) $ (!\Inst_vga|Add4~12_combout\)))) # (!\Inst_vga|hCounter\(8) & (!\Inst_vga|Add4~10_combout\ & (\Inst_vga|hCounter\(9) $ 
-- (!\Inst_vga|Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(8),
	datab => \Inst_vga|hCounter\(9),
	datac => \Inst_vga|Add4~10_combout\,
	datad => \Inst_vga|Add4~12_combout\,
	combout => \Inst_vga|vga_green[0]~9_combout\);

-- Location: LCCOMB_X41_Y13_N30
\Inst_vga|vga_green[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~8_combout\ = (\Inst_vga|Add4~6_combout\ & (\Inst_vga|hCounter\(6) & (\Inst_vga|hCounter\(7) $ (!\Inst_vga|Add4~8_combout\)))) # (!\Inst_vga|Add4~6_combout\ & (!\Inst_vga|hCounter\(6) & (\Inst_vga|hCounter\(7) $ 
-- (!\Inst_vga|Add4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Add4~6_combout\,
	datab => \Inst_vga|hCounter\(7),
	datac => \Inst_vga|Add4~8_combout\,
	datad => \Inst_vga|hCounter\(6),
	combout => \Inst_vga|vga_green[0]~8_combout\);

-- Location: LCCOMB_X41_Y13_N2
\Inst_vga|vga_green[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~13_combout\ = (\Inst_vga|vga_green[0]~7_combout\ & (\Inst_vga|vga_green[0]~12_combout\ & (\Inst_vga|vga_green[0]~9_combout\ & \Inst_vga|vga_green[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vga_green[0]~7_combout\,
	datab => \Inst_vga|vga_green[0]~12_combout\,
	datac => \Inst_vga|vga_green[0]~9_combout\,
	datad => \Inst_vga|vga_green[0]~8_combout\,
	combout => \Inst_vga|vga_green[0]~13_combout\);

-- Location: LCCOMB_X41_Y15_N12
\Inst_vga|vga_green[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~14_combout\ = (\Inst_vga|Equal2~0_combout\ & ((\Inst_vga|vga_green[0]~6_combout\) # ((\Inst_vga|vga_green[0]~13_combout\)))) # (!\Inst_vga|Equal2~0_combout\ & (((\Inst_vga|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal2~0_combout\,
	datab => \Inst_vga|vga_green[0]~6_combout\,
	datac => \Inst_vga|vga_green[0]~13_combout\,
	datad => \Inst_vga|process_0~0_combout\,
	combout => \Inst_vga|vga_green[0]~14_combout\);

-- Location: LCCOMB_X41_Y15_N30
\Inst_vga|vga_green[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~20_combout\ = (\Inst_vga|blank~regout\ & ((\Inst_vga|Equal2~0_combout\ & ((\Inst_vga|vga_green[0]~15_combout\) # (!\Inst_vga|vga_green[0]~14_combout\))) # (!\Inst_vga|Equal2~0_combout\ & ((\Inst_vga|vga_green[0]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal2~0_combout\,
	datab => \Inst_vga|blank~regout\,
	datac => \Inst_vga|vga_green[0]~15_combout\,
	datad => \Inst_vga|vga_green[0]~14_combout\,
	combout => \Inst_vga|vga_green[0]~20_combout\);

-- Location: LCCOMB_X41_Y15_N4
\Inst_vga|vga_green[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green[0]~21_combout\ = ((!\Inst_vga|Equal2~0_combout\ & (!\Inst_vga|LessThan8~20_combout\ & !\Inst_vga|LessThan9~20_combout\))) # (!\Inst_vga|vga_green[0]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal2~0_combout\,
	datab => \Inst_vga|LessThan8~20_combout\,
	datac => \Inst_vga|LessThan9~20_combout\,
	datad => \Inst_vga|vga_green[0]~20_combout\,
	combout => \Inst_vga|vga_green[0]~21_combout\);

-- Location: LCFF_X41_Y15_N17
\Inst_vga|vga_red[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|vga_red~1_combout\,
	ena => \Inst_vga|vga_green[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vga_red\(0));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OV7670_D[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OV7670_D(1),
	combout => \OV7670_D~combout\(1));

-- Location: LCCOMB_X12_Y11_N20
\capture|d_latch[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|d_latch[1]~feeder_combout\ = \OV7670_D~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OV7670_D~combout\(1),
	combout => \capture|d_latch[1]~feeder_combout\);

-- Location: LCFF_X12_Y11_N21
\capture|d_latch[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|d_latch[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|d_latch\(1));

-- Location: LCFF_X12_Y11_N3
\capture|hold_red[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	sdata => \capture|d_latch\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|hold_red\(1));

-- Location: LCCOMB_X12_Y11_N0
\capture|dout[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|dout[6]~feeder_combout\ = \capture|hold_red\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \capture|hold_red\(1),
	combout => \capture|dout[6]~feeder_combout\);

-- Location: LCFF_X12_Y11_N1
\capture|dout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|dout[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|dout\(6));

-- Location: M4K_X26_Y12
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode894w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode894w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode894w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y14
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode857w\(3),
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode857w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y18
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode884w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode884w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode884w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y15_N0
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~6_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0)) # 
-- ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22~portadataout\)))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a6~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a22~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~6_combout\);

-- Location: LCCOMB_X40_Y15_N14
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~7_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~6_combout\ & 
-- ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30~portadataout\))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~6_combout\ & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14~portadataout\)))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a14~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a30~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~6_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~7_combout\);

-- Location: M4K_X13_Y11
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode934w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode934w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode934w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y17
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode924w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode924w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode924w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y15
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode904w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y16
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode914w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode914w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode914w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y15_N26
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~4_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46~portadataout\))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a38~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a46~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~4_combout\);

-- Location: LCCOMB_X40_Y15_N2
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~5_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~4_combout\ & 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62~portadataout\)) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~4_combout\ & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54~portadataout\))))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a62~portadataout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a54~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~4_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~5_combout\);

-- Location: LCCOMB_X40_Y15_N30
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~8_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~5_combout\))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & (\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2),
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~7_combout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~5_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~8_combout\);

-- Location: LCCOMB_X41_Y15_N10
\Inst_vga|vga_red~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_red~2_combout\ = (\Inst_vga|blank~regout\ & ((\Inst_vga|Equal2~0_combout\) # ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~8_combout\) # (\Inst_vga|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal2~0_combout\,
	datab => \Inst_vga|blank~regout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~8_combout\,
	datad => \Inst_vga|process_0~0_combout\,
	combout => \Inst_vga|vga_red~2_combout\);

-- Location: LCFF_X41_Y15_N11
\Inst_vga|vga_red[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|vga_red~2_combout\,
	ena => \Inst_vga|vga_green[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vga_red\(1));

-- Location: LCCOMB_X41_Y15_N8
\Inst_vga|vga_red~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_red~3_combout\ = (\Inst_vga|blank~regout\ & ((\Inst_vga|Equal2~0_combout\) # ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~13_combout\) # (\Inst_vga|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal2~0_combout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~13_combout\,
	datac => \Inst_vga|blank~regout\,
	datad => \Inst_vga|process_0~0_combout\,
	combout => \Inst_vga|vga_red~3_combout\);

-- Location: LCFF_X41_Y15_N9
\Inst_vga|vga_red[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|vga_red~3_combout\,
	ena => \Inst_vga|vga_green[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vga_red\(2));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OV7670_D[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OV7670_D(5),
	combout => \OV7670_D~combout\(5));

-- Location: LCCOMB_X16_Y32_N0
\capture|d_latch[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|d_latch[5]~feeder_combout\ = \OV7670_D~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OV7670_D~combout\(5),
	combout => \capture|d_latch[5]~feeder_combout\);

-- Location: LCFF_X16_Y32_N1
\capture|d_latch[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|d_latch[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|d_latch\(5));

-- Location: LCCOMB_X16_Y32_N2
\capture|hold_green[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|hold_green[0]~feeder_combout\ = \capture|d_latch\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \capture|d_latch\(5),
	combout => \capture|hold_green[0]~feeder_combout\);

-- Location: LCFF_X16_Y32_N3
\capture|hold_green[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|hold_green[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|hold_green\(0));

-- Location: LCCOMB_X16_Y32_N20
\capture|dout[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|dout[2]~feeder_combout\ = \capture|hold_green\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \capture|hold_green\(0),
	combout => \capture|dout[2]~feeder_combout\);

-- Location: LCFF_X16_Y32_N21
\capture|dout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|dout[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|dout\(2));

-- Location: M4K_X52_Y29
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode894w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode894w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode894w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y27
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode884w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode884w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode884w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y19_N0
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~16_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18~portadataout\) # 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0))))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2~portadataout\ & 
-- ((!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a2~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a18~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~16_combout\);

-- Location: LCCOMB_X40_Y19_N2
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~17_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~16_combout\ & 
-- ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26~portadataout\))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~16_combout\ & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10~portadataout\)))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a10~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a26~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~16_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~17_combout\);

-- Location: M4K_X26_Y28
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode924w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode924w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode924w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y31
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode904w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34_PORTADATAOUT_bus\);

-- Location: LCCOMB_X37_Y19_N16
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~14_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42~portadataout\) # 
-- ((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1))))) # (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (((!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & 
-- \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a42~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a34~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~14_combout\);

-- Location: LCCOMB_X40_Y19_N10
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~15_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~14_combout\ & 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58~portadataout\)) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~14_combout\ & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50~portadataout\))))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a58~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a50~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~14_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~15_combout\);

-- Location: LCCOMB_X40_Y19_N4
\Inst_vga|vga_green~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green~16_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~15_combout\))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & (\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~17_combout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2),
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~15_combout\,
	combout => \Inst_vga|vga_green~16_combout\);

-- Location: LCCOMB_X41_Y15_N6
\Inst_vga|vga_green~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green~17_combout\ = (!\Inst_vga|Equal2~0_combout\ & (!\Inst_vga|process_0~0_combout\ & (\Inst_vga|blank~regout\ & \Inst_vga|vga_green~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal2~0_combout\,
	datab => \Inst_vga|process_0~0_combout\,
	datac => \Inst_vga|blank~regout\,
	datad => \Inst_vga|vga_green~16_combout\,
	combout => \Inst_vga|vga_green~17_combout\);

-- Location: LCFF_X41_Y15_N7
\Inst_vga|vga_green[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|vga_green~17_combout\,
	ena => \Inst_vga|vga_green[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vga_green\(0));

-- Location: LCCOMB_X41_Y15_N0
\Inst_vga|vga_green~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green~18_combout\ = (!\Inst_vga|Equal2~0_combout\ & (\Inst_vga|blank~regout\ & (\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~22_combout\ & !\Inst_vga|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal2~0_combout\,
	datab => \Inst_vga|blank~regout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~22_combout\,
	datad => \Inst_vga|process_0~0_combout\,
	combout => \Inst_vga|vga_green~18_combout\);

-- Location: LCFF_X41_Y15_N1
\Inst_vga|vga_green[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|vga_green~18_combout\,
	ena => \Inst_vga|vga_green[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vga_green\(1));

-- Location: LCCOMB_X41_Y15_N18
\Inst_vga|vga_green~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_green~19_combout\ = (!\Inst_vga|Equal2~0_combout\ & (\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~27_combout\ & (\Inst_vga|blank~regout\ & !\Inst_vga|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal2~0_combout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~27_combout\,
	datac => \Inst_vga|blank~regout\,
	datad => \Inst_vga|process_0~0_combout\,
	combout => \Inst_vga|vga_green~19_combout\);

-- Location: LCFF_X41_Y15_N19
\Inst_vga|vga_green[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|vga_green~19_combout\,
	ena => \Inst_vga|vga_green[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vga_green\(2));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OV7670_D[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OV7670_D(3),
	combout => \OV7670_D~combout\(3));

-- Location: LCCOMB_X22_Y32_N0
\capture|d_latch[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|d_latch[3]~feeder_combout\ = \OV7670_D~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OV7670_D~combout\(3),
	combout => \capture|d_latch[3]~feeder_combout\);

-- Location: LCFF_X22_Y32_N1
\capture|d_latch[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|d_latch[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|d_latch\(3));

-- Location: LCCOMB_X23_Y30_N24
\capture|dout[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|dout[0]~feeder_combout\ = \capture|d_latch\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \capture|d_latch\(3),
	combout => \capture|dout[0]~feeder_combout\);

-- Location: LCFF_X23_Y30_N25
\capture|dout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|dout[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|dout\(0));

-- Location: M4K_X52_Y24
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode884w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode884w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode884w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y19_N20
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~30_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1))))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16~portadataout\))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a16~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~30_combout\);

-- Location: M4K_X13_Y24
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode874w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode874w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode874w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y19_N22
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~31_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~30_combout\ & 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24~portadataout\)) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~30_combout\ & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8~portadataout\))))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a24~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~30_combout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a8~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~31_combout\);

-- Location: M4K_X13_Y23
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode924w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode924w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode924w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y30
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode904w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode904w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32_PORTADATAOUT_bus\);

-- Location: LCCOMB_X37_Y19_N18
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~28_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0))))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40~portadataout\)) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a40~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a32~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~28_combout\);

-- Location: LCCOMB_X40_Y19_N6
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~29_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~28_combout\ & 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56~portadataout\)) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~28_combout\ & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48~portadataout\))))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a56~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a48~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~28_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~29_combout\);

-- Location: LCCOMB_X40_Y19_N28
\Inst_vga|vga_blue~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_blue~0_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~29_combout\))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & (\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~31_combout\,
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2),
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~29_combout\,
	combout => \Inst_vga|vga_blue~0_combout\);

-- Location: LCCOMB_X41_Y15_N20
\Inst_vga|vga_blue~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_blue~1_combout\ = (!\Inst_vga|Equal2~0_combout\ & (!\Inst_vga|process_0~0_combout\ & (\Inst_vga|blank~regout\ & \Inst_vga|vga_blue~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal2~0_combout\,
	datab => \Inst_vga|process_0~0_combout\,
	datac => \Inst_vga|blank~regout\,
	datad => \Inst_vga|vga_blue~0_combout\,
	combout => \Inst_vga|vga_blue~1_combout\);

-- Location: LCFF_X41_Y15_N21
\Inst_vga|vga_blue[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|vga_blue~1_combout\,
	ena => \Inst_vga|vga_green[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vga_blue\(1));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OV7670_D[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OV7670_D(4),
	combout => \OV7670_D~combout\(4));

-- Location: LCCOMB_X27_Y32_N2
\capture|d_latch[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|d_latch[4]~feeder_combout\ = \OV7670_D~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OV7670_D~combout\(4),
	combout => \capture|d_latch[4]~feeder_combout\);

-- Location: LCFF_X27_Y32_N3
\capture|d_latch[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|d_latch[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|d_latch\(4));

-- Location: LCCOMB_X27_Y32_N28
\capture|dout[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \capture|dout[1]~feeder_combout\ = \capture|d_latch\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \capture|d_latch\(4),
	combout => \capture|dout[1]~feeder_combout\);

-- Location: LCFF_X27_Y32_N29
\capture|dout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \OV7670_PCLK~clkctrl_outclk\,
	datain => \capture|dout[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \capture|dout\(1));

-- Location: M4K_X13_Y31
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode874w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode874w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode874w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y25
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode884w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode884w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode884w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17_PORTADATAOUT_bus\);

-- Location: LCCOMB_X37_Y19_N0
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~34_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1))))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17~portadataout\))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a1~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a17~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~34_combout\);

-- Location: LCCOMB_X37_Y19_N14
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~35_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~34_combout\ & 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25~portadataout\)) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~34_combout\ & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9~portadataout\))))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a25~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a9~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~34_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~35_combout\);

-- Location: M4K_X13_Y32
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode924w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode924w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode924w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y20
\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:fb|altsyncram:altsyncram_component|altsyncram_ikj1:auto_generated|altsyncram_pes1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \fb|altsyncram_component|auto_generated|altsyncram1|decode4|w_anode914w\(3),
	clk0 => \clk50~clkctrl_outclk\,
	clk1 => \OV7670_PCLK~clkctrl_outclk\,
	ena0 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_a|w_anode914w[3]~0_combout\,
	ena1 => \fb|altsyncram_component|auto_generated|altsyncram1|decode_b|w_anode914w[3]~0_combout\,
	portadatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTADATAIN_bus\,
	portbdatain => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTBDATAIN_bus\,
	portaaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTAADDR_bus\,
	portbaddr => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41_PORTADATAOUT_bus\);

-- Location: LCCOMB_X37_Y19_N12
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~32_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0))))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41~portadataout\))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0) & (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a33~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(0),
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a41~portadataout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~32_combout\);

-- Location: LCCOMB_X37_Y19_N26
\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~33_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~32_combout\ & 
-- (\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57~portadataout\)) # (!\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~32_combout\ & ((\fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49~portadataout\))))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a57~portadataout\,
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(1),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|ram_block2a49~portadataout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~32_combout\,
	combout => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~33_combout\);

-- Location: LCCOMB_X37_Y19_N20
\Inst_vga|vga_blue~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_blue~2_combout\ = (\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~33_combout\))) # 
-- (!\fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2) & (\fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fb|altsyncram_component|auto_generated|altsyncram1|out_address_reg_a\(2),
	datac => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~35_combout\,
	datad => \fb|altsyncram_component|auto_generated|altsyncram1|mux5|_~33_combout\,
	combout => \Inst_vga|vga_blue~2_combout\);

-- Location: LCCOMB_X41_Y15_N26
\Inst_vga|vga_blue~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|vga_blue~3_combout\ = (!\Inst_vga|Equal2~0_combout\ & (!\Inst_vga|process_0~0_combout\ & (\Inst_vga|blank~regout\ & \Inst_vga|vga_blue~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|Equal2~0_combout\,
	datab => \Inst_vga|process_0~0_combout\,
	datac => \Inst_vga|blank~regout\,
	datad => \Inst_vga|vga_blue~2_combout\,
	combout => \Inst_vga|vga_blue~3_combout\);

-- Location: LCFF_X41_Y15_N27
\Inst_vga|vga_blue[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|vga_blue~3_combout\,
	ena => \Inst_vga|vga_green[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vga_blue\(2));

-- Location: LCCOMB_X40_Y14_N28
\Inst_vga|LessThan13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|LessThan13~0_combout\ = (\Inst_vga|hCounter\(3) & ((\Inst_vga|hCounter\(2)) # ((\Inst_vga|hCounter\(1)) # (\controller|sys_clk~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(2),
	datab => \Inst_vga|hCounter\(3),
	datac => \Inst_vga|hCounter\(1),
	datad => \controller|sys_clk~regout\,
	combout => \Inst_vga|LessThan13~0_combout\);

-- Location: LCCOMB_X40_Y14_N30
\Inst_vga|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|process_0~2_combout\ = \Inst_vga|hCounter\(7) $ (((\Inst_vga|hCounter\(6) & ((\Inst_vga|LessThan13~0_combout\) # (!\Inst_vga|LessThan11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(6),
	datab => \Inst_vga|LessThan13~0_combout\,
	datac => \Inst_vga|hCounter\(7),
	datad => \Inst_vga|LessThan11~0_combout\,
	combout => \Inst_vga|process_0~2_combout\);

-- Location: LCCOMB_X40_Y14_N26
\Inst_vga|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|process_0~3_combout\ = (\Inst_vga|hCounter\(8) & (\Inst_vga|process_0~2_combout\ & (!\Inst_vga|hCounter\(10) & \Inst_vga|hCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|hCounter\(8),
	datab => \Inst_vga|process_0~2_combout\,
	datac => \Inst_vga|hCounter\(10),
	datad => \Inst_vga|hCounter\(9),
	combout => \Inst_vga|process_0~3_combout\);

-- Location: LCFF_X40_Y14_N27
\Inst_vga|vga_hsync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vga_hsync~regout\);

-- Location: LCCOMB_X47_Y15_N2
\Inst_vga|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|process_0~4_combout\ = (\Inst_vga|vCounter\(2) $ (((!\Inst_vga|vCounter\(1) & !\Inst_vga|vCounter\(0))))) # (!\Inst_vga|vCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|vCounter\(1),
	datab => \Inst_vga|vCounter\(2),
	datac => \Inst_vga|vCounter\(0),
	datad => \Inst_vga|vCounter\(3),
	combout => \Inst_vga|process_0~4_combout\);

-- Location: LCCOMB_X47_Y15_N8
\Inst_vga|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Inst_vga|process_0~5_combout\ = (\Inst_vga|process_0~1_combout\ & (!\Inst_vga|process_0~4_combout\ & (\Inst_vga|vCounter\(9) & !\Inst_vga|vCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga|process_0~1_combout\,
	datab => \Inst_vga|process_0~4_combout\,
	datac => \Inst_vga|vCounter\(9),
	datad => \Inst_vga|vCounter\(5),
	combout => \Inst_vga|process_0~5_combout\);

-- Location: LCFF_X47_Y15_N9
\Inst_vga|vga_vsync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50~clkctrl_outclk\,
	datain => \Inst_vga|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Inst_vga|vga_vsync~regout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OV7670_SIOD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|Inst_i2c_sender|ALT_INV_data_sr\(31),
	oe => \controller|Inst_i2c_sender|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => OV7670_SIOD);

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OV7670_SIOC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|Inst_i2c_sender|sioc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OV7670_SIOC);

-- Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OV7670_RESET~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OV7670_RESET);

-- Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OV7670_PWDN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OV7670_PWDN);

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OV7670_XCLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|sys_clk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OV7670_XCLK);

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|Inst_ov7670_registers|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(0));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(1));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(2));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(3));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(4));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(5));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(6));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED(7));

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_red[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Inst_vga|vga_red\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_red(0));

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_red[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Inst_vga|vga_red\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_red(1));

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_red[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Inst_vga|vga_red\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_red(2));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_green[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Inst_vga|vga_green\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_green(0));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_green[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Inst_vga|vga_green\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_green(1));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_green[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Inst_vga|vga_green\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_green(2));

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_blue[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Inst_vga|vga_blue\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_blue(1));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_blue[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Inst_vga|vga_blue\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_blue(2));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_hsync~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Inst_vga|vga_hsync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_hsync);

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_vsync~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Inst_vga|vga_vsync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_vsync);
END structure;


