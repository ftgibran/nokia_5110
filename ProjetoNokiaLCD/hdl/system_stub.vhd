-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    fpga_0_RS232_DTE_RX_pin : in std_logic;
    fpga_0_RS232_DTE_TX_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_Clk_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_Clk_n_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_CE_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_CS_n_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_RAS_n_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_CAS_n_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_WE_n_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_BankAddr_pin : out std_logic_vector(1 downto 0);
    fpga_0_DDR_SDRAM_DDR_Addr_pin : out std_logic_vector(12 downto 0);
    fpga_0_DDR_SDRAM_DDR_DQ_pin : inout std_logic_vector(15 downto 0);
    fpga_0_DDR_SDRAM_DDR_DM_pin : out std_logic_vector(1 downto 0);
    fpga_0_DDR_SDRAM_DDR_DQS_pin : inout std_logic_vector(1 downto 0);
    fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin : inout std_logic;
    fpga_0_clk_1_sys_clk_pin : in std_logic;
    fpga_0_rst_1_sys_rst_pin : in std_logic;
    push_GPIO_IO_I_pin : in std_logic_vector(0 to 3);
    rot_GPIO_IO_I_pin : in std_logic_vector(0 to 1);
    D_C_GPIO_IO_O_pin : out std_logic;
    LED_GPIO_IO_O_pin : out std_logic;
    RST_GPIO_IO_O_pin : out std_logic;
    SCE_GPIO_IO_O_pin : out std_logic;
    SPI_SCK_pin : inout std_logic;
    SPI_MOSI_pin : inout std_logic
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      fpga_0_RS232_DTE_RX_pin : in std_logic;
      fpga_0_RS232_DTE_TX_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_Clk_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_Clk_n_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_CE_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_CS_n_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_RAS_n_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_CAS_n_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_WE_n_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_BankAddr_pin : out std_logic_vector(1 downto 0);
      fpga_0_DDR_SDRAM_DDR_Addr_pin : out std_logic_vector(12 downto 0);
      fpga_0_DDR_SDRAM_DDR_DQ_pin : inout std_logic_vector(15 downto 0);
      fpga_0_DDR_SDRAM_DDR_DM_pin : out std_logic_vector(1 downto 0);
      fpga_0_DDR_SDRAM_DDR_DQS_pin : inout std_logic_vector(1 downto 0);
      fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin : inout std_logic;
      fpga_0_clk_1_sys_clk_pin : in std_logic;
      fpga_0_rst_1_sys_rst_pin : in std_logic;
      push_GPIO_IO_I_pin : in std_logic_vector(0 to 3);
      rot_GPIO_IO_I_pin : in std_logic_vector(0 to 1);
      D_C_GPIO_IO_O_pin : out std_logic;
      LED_GPIO_IO_O_pin : out std_logic;
      RST_GPIO_IO_O_pin : out std_logic;
      SCE_GPIO_IO_O_pin : out std_logic;
      SPI_SCK_pin : inout std_logic;
      SPI_MOSI_pin : inout std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      fpga_0_RS232_DTE_RX_pin => fpga_0_RS232_DTE_RX_pin,
      fpga_0_RS232_DTE_TX_pin => fpga_0_RS232_DTE_TX_pin,
      fpga_0_DDR_SDRAM_DDR_Clk_pin => fpga_0_DDR_SDRAM_DDR_Clk_pin,
      fpga_0_DDR_SDRAM_DDR_Clk_n_pin => fpga_0_DDR_SDRAM_DDR_Clk_n_pin,
      fpga_0_DDR_SDRAM_DDR_CE_pin => fpga_0_DDR_SDRAM_DDR_CE_pin,
      fpga_0_DDR_SDRAM_DDR_CS_n_pin => fpga_0_DDR_SDRAM_DDR_CS_n_pin,
      fpga_0_DDR_SDRAM_DDR_RAS_n_pin => fpga_0_DDR_SDRAM_DDR_RAS_n_pin,
      fpga_0_DDR_SDRAM_DDR_CAS_n_pin => fpga_0_DDR_SDRAM_DDR_CAS_n_pin,
      fpga_0_DDR_SDRAM_DDR_WE_n_pin => fpga_0_DDR_SDRAM_DDR_WE_n_pin,
      fpga_0_DDR_SDRAM_DDR_BankAddr_pin => fpga_0_DDR_SDRAM_DDR_BankAddr_pin,
      fpga_0_DDR_SDRAM_DDR_Addr_pin => fpga_0_DDR_SDRAM_DDR_Addr_pin,
      fpga_0_DDR_SDRAM_DDR_DQ_pin => fpga_0_DDR_SDRAM_DDR_DQ_pin,
      fpga_0_DDR_SDRAM_DDR_DM_pin => fpga_0_DDR_SDRAM_DDR_DM_pin,
      fpga_0_DDR_SDRAM_DDR_DQS_pin => fpga_0_DDR_SDRAM_DDR_DQS_pin,
      fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin => fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin,
      fpga_0_clk_1_sys_clk_pin => fpga_0_clk_1_sys_clk_pin,
      fpga_0_rst_1_sys_rst_pin => fpga_0_rst_1_sys_rst_pin,
      push_GPIO_IO_I_pin => push_GPIO_IO_I_pin,
      rot_GPIO_IO_I_pin => rot_GPIO_IO_I_pin,
      D_C_GPIO_IO_O_pin => D_C_GPIO_IO_O_pin,
      LED_GPIO_IO_O_pin => LED_GPIO_IO_O_pin,
      RST_GPIO_IO_O_pin => RST_GPIO_IO_O_pin,
      SCE_GPIO_IO_O_pin => SCE_GPIO_IO_O_pin,
      SPI_SCK_pin => SPI_SCK_pin,
      SPI_MOSI_pin => SPI_MOSI_pin
    );

end architecture STRUCTURE;
