transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/João\ Vicente/Documents/vhdl/Projeto\ SD/Projeto80x60\ -\ Com\ audio/db {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/db/altpll_audio_altpll.v}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/WrenSync.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/vga_driver.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/Top_AchandoPonto.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/seg7_lut_4.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/seg7_lut.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/sccb.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/Project1_top.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/PosicaoPonto.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/OV7670_registers.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/OV7670_driver.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/OV7670_capture.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/FSM_AchandoPonto.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/framebuffer.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/DesenhaQuadrado.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/debounce.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/Comparadores.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/audio_dac.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/altpll_audio.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/Decodificador7Seg.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/centroPonto.vhd}
vcom -93 -work work {C:/Users/João Vicente/Documents/vhdl/Projeto SD/Projeto80x60 - Com audio/top_geral.vhd}

