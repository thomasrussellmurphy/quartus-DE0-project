module DE0_TOP
       (
           //////////////////////// Clock Input ////////////////////////
           input CLOCK_50,
           input CLOCK_50_2,
           //////////////////////// Push Button ////////////////////////
           input [ 2: 0 ] BUTTON,
           //////////////////////// DPDT Switch ////////////////////////
           input [ 9: 0 ] SW,
           //////////////////////// 7-SEG Display ////////////////////////
           output [ 6: 0 ] HEX0_D,
           output HEX0_DP,
           output [ 6: 0 ] HEX1_D,
           output HEX1_DP,
           output [ 6: 0 ] HEX2_D,
           output HEX2_DP,
           output [ 6: 0 ] HEX3_D,
           output HEX3_DP,
           //////////////////////// LED ////////////////////////
           output [ 9: 0 ] LEDG,
           //////////////////////// UART ////////////////////////
           output UART_TXD,
           input UART_RXD,
           output UART_CTS,
           input UART_RTS,
           //////////////////////// SDRAM Interface ////////////////////////
           inout [ 15: 0 ] DRAM_DQ,
           output [ 12: 0 ] DRAM_ADDR,
           output DRAM_LDQM,
           output DRAM_UDQM,
           output DRAM_WE_N,
           output DRAM_CAS_N,
           output DRAM_RAS_N,
           output DRAM_CS_N,
           output DRAM_BA_0,
           output DRAM_BA_1,
           output DRAM_CLK,
           output DRAM_CKE,
           //////////////////////// Flash Interface ////////////////////////
           inout [ 14: 0 ] FL_DQ,
           inout FL_DQ15_AM1,
           output [ 21: 0 ] FL_ADDR,
           output FL_WE_N,
           output FL_RST_N,
           output FL_OE_N,
           output FL_CE_N,
           output FL_WP_N,
           output FL_BYTE_N,
           input FL_RY,
           //////////////////////// LCD Module 16X2 ////////////////////////
           inout [ 7: 0 ] LCD_DATA,
           output LCD_BLON,
           output LCD_RW,
           output LCD_EN,
           output LCD_RS,
           //////////////////////// SD Card Interface ////////////////////////
           inout SD_DAT0,
           inout SD_DAT3,
           inout SD_CMD,
           output SD_CLK,
           input SD_WP_N,
           //////////////////////// PS2 ////////////////////////
           inout PS2_KBDAT,
           inout PS2_KBCLK,
           inout PS2_MSDAT,
           inout PS2_MSCLK,
           //////////////////////// VGA ////////////////////////
           output VGA_HS,
           output VGA_VS,
           output [ 3: 0 ] VGA_R,
           output [ 3: 0 ] VGA_G,
           output [ 3: 0 ] VGA_B,
           //////////////////////// GPIO ////////////////////////
           input [ 1: 0 ] GPIO0_CLKIN,
           output [ 1: 0 ] GPIO0_CLKOUT,
           inout [ 31: 0 ] GPIO0_D,
           input [ 1: 0 ] GPIO1_CLKIN,
           output [ 1: 0 ] GPIO1_CLKOUT,
           inout [ 31: 0 ] GPIO1_D
       );

// =======================================================
// REG/WIRE declarations
// =======================================================
// All inout port turn to tri-state
assign DRAM_DQ = 16'hzzzz;
assign FL_DQ = 16'hzzzz;
assign LCD_DATA = 8'hzz;
assign SD_DAT0 = 1'hz;
assign SD_DAT3 = 1'hz;
assign SD_CMD = 1'hz;
assign PS2_KBDAT = 1'hz;
assign PS2_KBCLK = 1'hz;
assign PS2_MSDAT = 1'hz;
assign PS2_MSCLK = 1'hz;
assign GPIO0_D = 32'hzzzzzzzz;
assign GPIO1_D = 32'hzzzzzzzz;


// =======================================================
// Structural coding
// =======================================================


endmodule
