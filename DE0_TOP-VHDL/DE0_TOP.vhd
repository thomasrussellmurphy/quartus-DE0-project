library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;

entity DE0_TOP is
  port (
    -- Clock Input
    CLOCK_50 : in std_logic;
    CLOCK_50_2 : in std_logic;
    -- Push Button
    BUTTON : in std_logic_vector(2 downto 0);
    -- DPDT Switch
    SW : in std_logic_vector(9 downto 0);
    -- 7-SEG Display
    HEX0_D : out std_logic_vector(6 downto 0);
    HEX0_DP : out std_logic;
    HEX1_D : out std_logic_vector(6 downto 0);
    HEX1_DP : out std_logic;
    HEX2_D : out std_logic_vector(6 downto 0);
    HEX2_DP : out std_logic;
    HEX3_D : out std_logic_vector(6 downto 0);
    HEX3_DP : out std_logic;
    -- LED
    LEDG : out std_logic_vector(9 downto 0);
    -- UART
    UART_TXD : out std_logic;
    UART_RXD : out std_logic;
    UART_CTS : out std_logic;
    UART_RTS : out std_logic;
    -- SDRAM Interface
    DRAM_DQ : inout std_logic_vector(15 downto 0);
    DRAM_ADDR : out std_logic_vector(12 downto 0);
    DRAM_LDQM : out std_logic;
    DRAM_UDQM : out std_logic;
    DRAM_WE_N : out std_logic;
    DRAM_CAS_N : out std_logic;
    DRAM_RAS_N : out std_logic;
    DRAM_CS_N : out std_logic;
    DRAM_BA_0 : out std_logic;
    DRAM_BA_1 : out std_logic;
    DRAM_CLK : out std_logic;
    DRAM_CKE : out std_logic;
    -- Flash Interface
    FL_DQ : inout std_logic_vector(14 downto 0);
    FL_DQ15_AM1 : inout std_logic;
    FL_ADDR : out std_logic_vector(21 downto 0);
    FL_WE_N : out std_logic;
    FL_RST_N : out std_logic;
    FL_OE_N : out std_logic;
    FL_CE_N : out std_logic;
    FL_WP_N : out std_logic;
    FL_BYTE_N : out std_logic;
    FL_RY : in std_logic;
    -- LCD Module 16X2
    LCD_DATA : inout std_logic_vector(7 downto 0);
    LCD_BLON : out std_logic;
    LCD_RW : out std_logic;
    LCD_EN : out std_logic;
    LCD_RS : out std_logic;
    -- SD Card Interface
    SD_DAT0 : inout std_logic;
    SD_DAT3 : inout std_logic;
    SD_CMD : inout std_logic;
    SD_CLK : inout std_logic;
    SD_WP_N : inout std_logic;
    -- PS2
    PS2_KBDAT : inout std_logic;
    PS2_KBCLK : inout std_logic;
    PS2_MSDAT : inout std_logic;
    PS2_MSCLK : inout std_logic;
    -- VGA
    VGA_HS : out std_logic;
    VGA_VS : out std_logic;
    VGA_R : out std_logic_vector(3 downto 0);
    VGA_G : out std_logic_vector(3 downto 0);
    VGA_B : out std_logic_vector(3 downto 0);
    -- GPIO
    GPIO0_CLKIN : in std_logic_vector(1 downto 0);
    GPIO0_CLKOUT : out std_logic_vector(1 downto 0);
    GPIO0_D : inout std_logic_vector(31 downto 0);
    GPIO1_CLKIN : std_logic_vector(1 downto 0);
    GPIO1_CLKOUT : std_logic_vector(1 downto 0);
    GPIO1_D : inout std_logic_vector(31 downto 0)
  );

architecture Structural of Basys2Project is
  -- Signal Declarations
begin
  -- Set unused inout ports to tristate
  set_tristate: process ()
  begin
    DRAM_DQ <= (others => 'Z');
    FL_DQ <= (others => 'Z');
    LCD_DATA <= (others => 'Z');
    SD_DAT0 <= Z;
    SD_DAT3 <= Z;
    SD_CMD <= Z;
    PS2_KBDAT <= Z;
    PS2_KBCLK <= Z;
    PS2_MSDAT <= Z;
    PS2_MSCLK <= Z;
    GPIO0_D <= (others => 'Z');
    GPIO1_D <= (others => 'Z');
  end process set_tristate;
end Structural;
