	component soc_system is
		port (
			clk_clk                                     : in    std_logic                     := 'X';             -- clk
			clock_bridge_0_out_clk_clk                  : out   std_logic;                                        -- clk
			clock_bridge_44_out_clk_clk                 : out   std_logic;                                        -- clk
			clock_bridge_48_out_clk_clk                 : out   std_logic;                                        -- clk
			hps_0_f2h_dma_req0_dma_req                  : in    std_logic                     := 'X';             -- dma_req
			hps_0_f2h_dma_req0_dma_single               : in    std_logic                     := 'X';             -- dma_single
			hps_0_f2h_dma_req0_dma_ack                  : out   std_logic;                                        -- dma_ack
			hps_0_f2h_dma_req1_dma_req                  : in    std_logic                     := 'X';             -- dma_req
			hps_0_f2h_dma_req1_dma_single               : in    std_logic                     := 'X';             -- dma_single
			hps_0_f2h_dma_req1_dma_ack                  : out   std_logic;                                        -- dma_ack
			hps_0_f2h_dma_req2_dma_req                  : in    std_logic                     := 'X';             -- dma_req
			hps_0_f2h_dma_req2_dma_single               : in    std_logic                     := 'X';             -- dma_single
			hps_0_f2h_dma_req2_dma_ack                  : out   std_logic;                                        -- dma_ack
			hps_0_f2h_dma_req3_dma_req                  : in    std_logic                     := 'X';             -- dma_req
			hps_0_f2h_dma_req3_dma_single               : in    std_logic                     := 'X';             -- dma_single
			hps_0_f2h_dma_req3_dma_ack                  : out   std_logic;                                        -- dma_ack
			hps_0_h2f_reset_reset_n                     : out   std_logic;                                        -- reset_n
			hps_io_hps_io_emac1_inst_TX_CLK             : out   std_logic;                                        -- hps_io_emac1_inst_TX_CLK
			hps_io_hps_io_emac1_inst_TXD0               : out   std_logic;                                        -- hps_io_emac1_inst_TXD0
			hps_io_hps_io_emac1_inst_TXD1               : out   std_logic;                                        -- hps_io_emac1_inst_TXD1
			hps_io_hps_io_emac1_inst_TXD2               : out   std_logic;                                        -- hps_io_emac1_inst_TXD2
			hps_io_hps_io_emac1_inst_TXD3               : out   std_logic;                                        -- hps_io_emac1_inst_TXD3
			hps_io_hps_io_emac1_inst_RXD0               : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD0
			hps_io_hps_io_emac1_inst_MDIO               : inout std_logic                     := 'X';             -- hps_io_emac1_inst_MDIO
			hps_io_hps_io_emac1_inst_MDC                : out   std_logic;                                        -- hps_io_emac1_inst_MDC
			hps_io_hps_io_emac1_inst_RX_CTL             : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CTL
			hps_io_hps_io_emac1_inst_TX_CTL             : out   std_logic;                                        -- hps_io_emac1_inst_TX_CTL
			hps_io_hps_io_emac1_inst_RX_CLK             : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CLK
			hps_io_hps_io_emac1_inst_RXD1               : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD1
			hps_io_hps_io_emac1_inst_RXD2               : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD2
			hps_io_hps_io_emac1_inst_RXD3               : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD3
			hps_io_hps_io_qspi_inst_IO0                 : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO0
			hps_io_hps_io_qspi_inst_IO1                 : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO1
			hps_io_hps_io_qspi_inst_IO2                 : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO2
			hps_io_hps_io_qspi_inst_IO3                 : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO3
			hps_io_hps_io_qspi_inst_SS0                 : out   std_logic;                                        -- hps_io_qspi_inst_SS0
			hps_io_hps_io_qspi_inst_CLK                 : out   std_logic;                                        -- hps_io_qspi_inst_CLK
			hps_io_hps_io_sdio_inst_CMD                 : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0                  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1                  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK                 : out   std_logic;                                        -- hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2                  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3                  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
			hps_io_hps_io_usb1_inst_D0                  : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D0
			hps_io_hps_io_usb1_inst_D1                  : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D1
			hps_io_hps_io_usb1_inst_D2                  : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D2
			hps_io_hps_io_usb1_inst_D3                  : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D3
			hps_io_hps_io_usb1_inst_D4                  : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D4
			hps_io_hps_io_usb1_inst_D5                  : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D5
			hps_io_hps_io_usb1_inst_D6                  : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D6
			hps_io_hps_io_usb1_inst_D7                  : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D7
			hps_io_hps_io_usb1_inst_CLK                 : in    std_logic                     := 'X';             -- hps_io_usb1_inst_CLK
			hps_io_hps_io_usb1_inst_STP                 : out   std_logic;                                        -- hps_io_usb1_inst_STP
			hps_io_hps_io_usb1_inst_DIR                 : in    std_logic                     := 'X';             -- hps_io_usb1_inst_DIR
			hps_io_hps_io_usb1_inst_NXT                 : in    std_logic                     := 'X';             -- hps_io_usb1_inst_NXT
			hps_io_hps_io_spim1_inst_CLK                : out   std_logic;                                        -- hps_io_spim1_inst_CLK
			hps_io_hps_io_spim1_inst_MOSI               : out   std_logic;                                        -- hps_io_spim1_inst_MOSI
			hps_io_hps_io_spim1_inst_MISO               : in    std_logic                     := 'X';             -- hps_io_spim1_inst_MISO
			hps_io_hps_io_spim1_inst_SS0                : out   std_logic;                                        -- hps_io_spim1_inst_SS0
			hps_io_hps_io_uart0_inst_RX                 : in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
			hps_io_hps_io_uart0_inst_TX                 : out   std_logic;                                        -- hps_io_uart0_inst_TX
			hps_io_hps_io_i2c0_inst_SDA                 : inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SDA
			hps_io_hps_io_i2c0_inst_SCL                 : inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SCL
			hps_io_hps_io_i2c1_inst_SDA                 : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SDA
			hps_io_hps_io_i2c1_inst_SCL                 : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SCL
			hps_io_hps_io_gpio_inst_GPIO09              : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO09
			hps_io_hps_io_gpio_inst_GPIO35              : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO35
			hps_io_hps_io_gpio_inst_GPIO40              : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO40
			hps_io_hps_io_gpio_inst_GPIO48              : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO48
			hps_io_hps_io_gpio_inst_GPIO53              : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO53
			hps_io_hps_io_gpio_inst_GPIO54              : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO54
			hps_io_hps_io_gpio_inst_GPIO61              : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO61
			i2s_clkctrl_apb_0_conduit_playback_lrclk    : out   std_logic;                                        -- playback_lrclk
			i2s_clkctrl_apb_0_conduit_clk_sel_48_44     : out   std_logic;                                        -- clk_sel_48_44
			i2s_clkctrl_apb_0_conduit_master_slave_mode : out   std_logic;                                        -- master_slave_mode
			i2s_clkctrl_apb_0_conduit_bclk              : out   std_logic;                                        -- bclk
			i2s_clkctrl_apb_0_conduit_capture_lrclk     : out   std_logic;                                        -- capture_lrclk
			i2s_clkctrl_apb_0_ext_bclk                  : in    std_logic                     := 'X';             -- bclk
			i2s_clkctrl_apb_0_ext_capture_lrclk         : in    std_logic                     := 'X';             -- capture_lrclk
			i2s_clkctrl_apb_0_ext_playback_lrclk        : in    std_logic                     := 'X';             -- playback_lrclk
			i2s_clkctrl_apb_0_mclk_clk                  : out   std_logic;                                        -- clk
			i2s_output_apb_0_capture_dma_req            : out   std_logic;                                        -- req
			i2s_output_apb_0_capture_dma_ack            : in    std_logic                     := 'X';             -- ack
			i2s_output_apb_0_capture_dma_enable         : out   std_logic;                                        -- enable
			i2s_output_apb_0_capture_fifo_data          : in    std_logic_vector(63 downto 0) := (others => 'X'); -- data
			i2s_output_apb_0_capture_fifo_write         : in    std_logic                     := 'X';             -- write
			i2s_output_apb_0_capture_fifo_full          : out   std_logic;                                        -- full
			i2s_output_apb_0_capture_fifo_clk           : in    std_logic                     := 'X';             -- clk
			i2s_output_apb_0_capture_fifo_empty         : out   std_logic;                                        -- empty
			i2s_output_apb_0_playback_dma_req           : out   std_logic;                                        -- req
			i2s_output_apb_0_playback_dma_ack           : in    std_logic                     := 'X';             -- ack
			i2s_output_apb_0_playback_dma_enable        : out   std_logic;                                        -- enable
			i2s_output_apb_0_playback_fifo_read         : in    std_logic                     := 'X';             -- read
			i2s_output_apb_0_playback_fifo_empty        : out   std_logic;                                        -- empty
			i2s_output_apb_0_playback_fifo_full         : out   std_logic;                                        -- full
			i2s_output_apb_0_playback_fifo_clk          : in    std_logic                     := 'X';             -- clk
			i2s_output_apb_0_playback_fifo_data         : out   std_logic_vector(63 downto 0);                    -- data
			memory_mem_a                                : out   std_logic_vector(14 downto 0);                    -- mem_a
			memory_mem_ba                               : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck                               : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n                             : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke                              : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n                             : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n                            : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n                            : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n                             : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n                          : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq                               : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs                              : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n                            : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			memory_mem_odt                              : out   std_logic;                                        -- mem_odt
			memory_mem_dm                               : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_oct_rzqin                            : in    std_logic                     := 'X';             -- oct_rzqin
			reset_reset_n                               : in    std_logic                     := 'X';             -- reset_n
			alt_vip_itc_0_clocked_video_vid_clk         : in    std_logic                     := 'X';             -- vid_clk
			alt_vip_itc_0_clocked_video_vid_data        : out   std_logic_vector(31 downto 0);                    -- vid_data
			alt_vip_itc_0_clocked_video_underflow       : out   std_logic;                                        -- underflow
			alt_vip_itc_0_clocked_video_vid_datavalid   : out   std_logic;                                        -- vid_datavalid
			alt_vip_itc_0_clocked_video_vid_v_sync      : out   std_logic;                                        -- vid_v_sync
			alt_vip_itc_0_clocked_video_vid_h_sync      : out   std_logic;                                        -- vid_h_sync
			alt_vip_itc_0_clocked_video_vid_f           : out   std_logic;                                        -- vid_f
			alt_vip_itc_0_clocked_video_vid_h           : out   std_logic;                                        -- vid_h
			alt_vip_itc_0_clocked_video_vid_v           : out   std_logic                                         -- vid_v
		);
	end component soc_system;

	u0 : component soc_system
		port map (
			clk_clk                                     => CONNECTED_TO_clk_clk,                                     --                            clk.clk
			clock_bridge_0_out_clk_clk                  => CONNECTED_TO_clock_bridge_0_out_clk_clk,                  --         clock_bridge_0_out_clk.clk
			clock_bridge_44_out_clk_clk                 => CONNECTED_TO_clock_bridge_44_out_clk_clk,                 --        clock_bridge_44_out_clk.clk
			clock_bridge_48_out_clk_clk                 => CONNECTED_TO_clock_bridge_48_out_clk_clk,                 --        clock_bridge_48_out_clk.clk
			hps_0_f2h_dma_req0_dma_req                  => CONNECTED_TO_hps_0_f2h_dma_req0_dma_req,                  --             hps_0_f2h_dma_req0.dma_req
			hps_0_f2h_dma_req0_dma_single               => CONNECTED_TO_hps_0_f2h_dma_req0_dma_single,               --                               .dma_single
			hps_0_f2h_dma_req0_dma_ack                  => CONNECTED_TO_hps_0_f2h_dma_req0_dma_ack,                  --                               .dma_ack
			hps_0_f2h_dma_req1_dma_req                  => CONNECTED_TO_hps_0_f2h_dma_req1_dma_req,                  --             hps_0_f2h_dma_req1.dma_req
			hps_0_f2h_dma_req1_dma_single               => CONNECTED_TO_hps_0_f2h_dma_req1_dma_single,               --                               .dma_single
			hps_0_f2h_dma_req1_dma_ack                  => CONNECTED_TO_hps_0_f2h_dma_req1_dma_ack,                  --                               .dma_ack
			hps_0_f2h_dma_req2_dma_req                  => CONNECTED_TO_hps_0_f2h_dma_req2_dma_req,                  --             hps_0_f2h_dma_req2.dma_req
			hps_0_f2h_dma_req2_dma_single               => CONNECTED_TO_hps_0_f2h_dma_req2_dma_single,               --                               .dma_single
			hps_0_f2h_dma_req2_dma_ack                  => CONNECTED_TO_hps_0_f2h_dma_req2_dma_ack,                  --                               .dma_ack
			hps_0_f2h_dma_req3_dma_req                  => CONNECTED_TO_hps_0_f2h_dma_req3_dma_req,                  --             hps_0_f2h_dma_req3.dma_req
			hps_0_f2h_dma_req3_dma_single               => CONNECTED_TO_hps_0_f2h_dma_req3_dma_single,               --                               .dma_single
			hps_0_f2h_dma_req3_dma_ack                  => CONNECTED_TO_hps_0_f2h_dma_req3_dma_ack,                  --                               .dma_ack
			hps_0_h2f_reset_reset_n                     => CONNECTED_TO_hps_0_h2f_reset_reset_n,                     --                hps_0_h2f_reset.reset_n
			hps_io_hps_io_emac1_inst_TX_CLK             => CONNECTED_TO_hps_io_hps_io_emac1_inst_TX_CLK,             --                         hps_io.hps_io_emac1_inst_TX_CLK
			hps_io_hps_io_emac1_inst_TXD0               => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD0,               --                               .hps_io_emac1_inst_TXD0
			hps_io_hps_io_emac1_inst_TXD1               => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD1,               --                               .hps_io_emac1_inst_TXD1
			hps_io_hps_io_emac1_inst_TXD2               => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD2,               --                               .hps_io_emac1_inst_TXD2
			hps_io_hps_io_emac1_inst_TXD3               => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD3,               --                               .hps_io_emac1_inst_TXD3
			hps_io_hps_io_emac1_inst_RXD0               => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD0,               --                               .hps_io_emac1_inst_RXD0
			hps_io_hps_io_emac1_inst_MDIO               => CONNECTED_TO_hps_io_hps_io_emac1_inst_MDIO,               --                               .hps_io_emac1_inst_MDIO
			hps_io_hps_io_emac1_inst_MDC                => CONNECTED_TO_hps_io_hps_io_emac1_inst_MDC,                --                               .hps_io_emac1_inst_MDC
			hps_io_hps_io_emac1_inst_RX_CTL             => CONNECTED_TO_hps_io_hps_io_emac1_inst_RX_CTL,             --                               .hps_io_emac1_inst_RX_CTL
			hps_io_hps_io_emac1_inst_TX_CTL             => CONNECTED_TO_hps_io_hps_io_emac1_inst_TX_CTL,             --                               .hps_io_emac1_inst_TX_CTL
			hps_io_hps_io_emac1_inst_RX_CLK             => CONNECTED_TO_hps_io_hps_io_emac1_inst_RX_CLK,             --                               .hps_io_emac1_inst_RX_CLK
			hps_io_hps_io_emac1_inst_RXD1               => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD1,               --                               .hps_io_emac1_inst_RXD1
			hps_io_hps_io_emac1_inst_RXD2               => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD2,               --                               .hps_io_emac1_inst_RXD2
			hps_io_hps_io_emac1_inst_RXD3               => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD3,               --                               .hps_io_emac1_inst_RXD3
			hps_io_hps_io_qspi_inst_IO0                 => CONNECTED_TO_hps_io_hps_io_qspi_inst_IO0,                 --                               .hps_io_qspi_inst_IO0
			hps_io_hps_io_qspi_inst_IO1                 => CONNECTED_TO_hps_io_hps_io_qspi_inst_IO1,                 --                               .hps_io_qspi_inst_IO1
			hps_io_hps_io_qspi_inst_IO2                 => CONNECTED_TO_hps_io_hps_io_qspi_inst_IO2,                 --                               .hps_io_qspi_inst_IO2
			hps_io_hps_io_qspi_inst_IO3                 => CONNECTED_TO_hps_io_hps_io_qspi_inst_IO3,                 --                               .hps_io_qspi_inst_IO3
			hps_io_hps_io_qspi_inst_SS0                 => CONNECTED_TO_hps_io_hps_io_qspi_inst_SS0,                 --                               .hps_io_qspi_inst_SS0
			hps_io_hps_io_qspi_inst_CLK                 => CONNECTED_TO_hps_io_hps_io_qspi_inst_CLK,                 --                               .hps_io_qspi_inst_CLK
			hps_io_hps_io_sdio_inst_CMD                 => CONNECTED_TO_hps_io_hps_io_sdio_inst_CMD,                 --                               .hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0                  => CONNECTED_TO_hps_io_hps_io_sdio_inst_D0,                  --                               .hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1                  => CONNECTED_TO_hps_io_hps_io_sdio_inst_D1,                  --                               .hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK                 => CONNECTED_TO_hps_io_hps_io_sdio_inst_CLK,                 --                               .hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2                  => CONNECTED_TO_hps_io_hps_io_sdio_inst_D2,                  --                               .hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3                  => CONNECTED_TO_hps_io_hps_io_sdio_inst_D3,                  --                               .hps_io_sdio_inst_D3
			hps_io_hps_io_usb1_inst_D0                  => CONNECTED_TO_hps_io_hps_io_usb1_inst_D0,                  --                               .hps_io_usb1_inst_D0
			hps_io_hps_io_usb1_inst_D1                  => CONNECTED_TO_hps_io_hps_io_usb1_inst_D1,                  --                               .hps_io_usb1_inst_D1
			hps_io_hps_io_usb1_inst_D2                  => CONNECTED_TO_hps_io_hps_io_usb1_inst_D2,                  --                               .hps_io_usb1_inst_D2
			hps_io_hps_io_usb1_inst_D3                  => CONNECTED_TO_hps_io_hps_io_usb1_inst_D3,                  --                               .hps_io_usb1_inst_D3
			hps_io_hps_io_usb1_inst_D4                  => CONNECTED_TO_hps_io_hps_io_usb1_inst_D4,                  --                               .hps_io_usb1_inst_D4
			hps_io_hps_io_usb1_inst_D5                  => CONNECTED_TO_hps_io_hps_io_usb1_inst_D5,                  --                               .hps_io_usb1_inst_D5
			hps_io_hps_io_usb1_inst_D6                  => CONNECTED_TO_hps_io_hps_io_usb1_inst_D6,                  --                               .hps_io_usb1_inst_D6
			hps_io_hps_io_usb1_inst_D7                  => CONNECTED_TO_hps_io_hps_io_usb1_inst_D7,                  --                               .hps_io_usb1_inst_D7
			hps_io_hps_io_usb1_inst_CLK                 => CONNECTED_TO_hps_io_hps_io_usb1_inst_CLK,                 --                               .hps_io_usb1_inst_CLK
			hps_io_hps_io_usb1_inst_STP                 => CONNECTED_TO_hps_io_hps_io_usb1_inst_STP,                 --                               .hps_io_usb1_inst_STP
			hps_io_hps_io_usb1_inst_DIR                 => CONNECTED_TO_hps_io_hps_io_usb1_inst_DIR,                 --                               .hps_io_usb1_inst_DIR
			hps_io_hps_io_usb1_inst_NXT                 => CONNECTED_TO_hps_io_hps_io_usb1_inst_NXT,                 --                               .hps_io_usb1_inst_NXT
			hps_io_hps_io_spim1_inst_CLK                => CONNECTED_TO_hps_io_hps_io_spim1_inst_CLK,                --                               .hps_io_spim1_inst_CLK
			hps_io_hps_io_spim1_inst_MOSI               => CONNECTED_TO_hps_io_hps_io_spim1_inst_MOSI,               --                               .hps_io_spim1_inst_MOSI
			hps_io_hps_io_spim1_inst_MISO               => CONNECTED_TO_hps_io_hps_io_spim1_inst_MISO,               --                               .hps_io_spim1_inst_MISO
			hps_io_hps_io_spim1_inst_SS0                => CONNECTED_TO_hps_io_hps_io_spim1_inst_SS0,                --                               .hps_io_spim1_inst_SS0
			hps_io_hps_io_uart0_inst_RX                 => CONNECTED_TO_hps_io_hps_io_uart0_inst_RX,                 --                               .hps_io_uart0_inst_RX
			hps_io_hps_io_uart0_inst_TX                 => CONNECTED_TO_hps_io_hps_io_uart0_inst_TX,                 --                               .hps_io_uart0_inst_TX
			hps_io_hps_io_i2c0_inst_SDA                 => CONNECTED_TO_hps_io_hps_io_i2c0_inst_SDA,                 --                               .hps_io_i2c0_inst_SDA
			hps_io_hps_io_i2c0_inst_SCL                 => CONNECTED_TO_hps_io_hps_io_i2c0_inst_SCL,                 --                               .hps_io_i2c0_inst_SCL
			hps_io_hps_io_i2c1_inst_SDA                 => CONNECTED_TO_hps_io_hps_io_i2c1_inst_SDA,                 --                               .hps_io_i2c1_inst_SDA
			hps_io_hps_io_i2c1_inst_SCL                 => CONNECTED_TO_hps_io_hps_io_i2c1_inst_SCL,                 --                               .hps_io_i2c1_inst_SCL
			hps_io_hps_io_gpio_inst_GPIO09              => CONNECTED_TO_hps_io_hps_io_gpio_inst_GPIO09,              --                               .hps_io_gpio_inst_GPIO09
			hps_io_hps_io_gpio_inst_GPIO35              => CONNECTED_TO_hps_io_hps_io_gpio_inst_GPIO35,              --                               .hps_io_gpio_inst_GPIO35
			hps_io_hps_io_gpio_inst_GPIO40              => CONNECTED_TO_hps_io_hps_io_gpio_inst_GPIO40,              --                               .hps_io_gpio_inst_GPIO40
			hps_io_hps_io_gpio_inst_GPIO48              => CONNECTED_TO_hps_io_hps_io_gpio_inst_GPIO48,              --                               .hps_io_gpio_inst_GPIO48
			hps_io_hps_io_gpio_inst_GPIO53              => CONNECTED_TO_hps_io_hps_io_gpio_inst_GPIO53,              --                               .hps_io_gpio_inst_GPIO53
			hps_io_hps_io_gpio_inst_GPIO54              => CONNECTED_TO_hps_io_hps_io_gpio_inst_GPIO54,              --                               .hps_io_gpio_inst_GPIO54
			hps_io_hps_io_gpio_inst_GPIO61              => CONNECTED_TO_hps_io_hps_io_gpio_inst_GPIO61,              --                               .hps_io_gpio_inst_GPIO61
			i2s_clkctrl_apb_0_conduit_playback_lrclk    => CONNECTED_TO_i2s_clkctrl_apb_0_conduit_playback_lrclk,    --      i2s_clkctrl_apb_0_conduit.playback_lrclk
			i2s_clkctrl_apb_0_conduit_clk_sel_48_44     => CONNECTED_TO_i2s_clkctrl_apb_0_conduit_clk_sel_48_44,     --                               .clk_sel_48_44
			i2s_clkctrl_apb_0_conduit_master_slave_mode => CONNECTED_TO_i2s_clkctrl_apb_0_conduit_master_slave_mode, --                               .master_slave_mode
			i2s_clkctrl_apb_0_conduit_bclk              => CONNECTED_TO_i2s_clkctrl_apb_0_conduit_bclk,              --                               .bclk
			i2s_clkctrl_apb_0_conduit_capture_lrclk     => CONNECTED_TO_i2s_clkctrl_apb_0_conduit_capture_lrclk,     --                               .capture_lrclk
			i2s_clkctrl_apb_0_ext_bclk                  => CONNECTED_TO_i2s_clkctrl_apb_0_ext_bclk,                  --          i2s_clkctrl_apb_0_ext.bclk
			i2s_clkctrl_apb_0_ext_capture_lrclk         => CONNECTED_TO_i2s_clkctrl_apb_0_ext_capture_lrclk,         --                               .capture_lrclk
			i2s_clkctrl_apb_0_ext_playback_lrclk        => CONNECTED_TO_i2s_clkctrl_apb_0_ext_playback_lrclk,        --                               .playback_lrclk
			i2s_clkctrl_apb_0_mclk_clk                  => CONNECTED_TO_i2s_clkctrl_apb_0_mclk_clk,                  --         i2s_clkctrl_apb_0_mclk.clk
			i2s_output_apb_0_capture_dma_req            => CONNECTED_TO_i2s_output_apb_0_capture_dma_req,            --   i2s_output_apb_0_capture_dma.req
			i2s_output_apb_0_capture_dma_ack            => CONNECTED_TO_i2s_output_apb_0_capture_dma_ack,            --                               .ack
			i2s_output_apb_0_capture_dma_enable         => CONNECTED_TO_i2s_output_apb_0_capture_dma_enable,         --                               .enable
			i2s_output_apb_0_capture_fifo_data          => CONNECTED_TO_i2s_output_apb_0_capture_fifo_data,          --  i2s_output_apb_0_capture_fifo.data
			i2s_output_apb_0_capture_fifo_write         => CONNECTED_TO_i2s_output_apb_0_capture_fifo_write,         --                               .write
			i2s_output_apb_0_capture_fifo_full          => CONNECTED_TO_i2s_output_apb_0_capture_fifo_full,          --                               .full
			i2s_output_apb_0_capture_fifo_clk           => CONNECTED_TO_i2s_output_apb_0_capture_fifo_clk,           --                               .clk
			i2s_output_apb_0_capture_fifo_empty         => CONNECTED_TO_i2s_output_apb_0_capture_fifo_empty,         --                               .empty
			i2s_output_apb_0_playback_dma_req           => CONNECTED_TO_i2s_output_apb_0_playback_dma_req,           --  i2s_output_apb_0_playback_dma.req
			i2s_output_apb_0_playback_dma_ack           => CONNECTED_TO_i2s_output_apb_0_playback_dma_ack,           --                               .ack
			i2s_output_apb_0_playback_dma_enable        => CONNECTED_TO_i2s_output_apb_0_playback_dma_enable,        --                               .enable
			i2s_output_apb_0_playback_fifo_read         => CONNECTED_TO_i2s_output_apb_0_playback_fifo_read,         -- i2s_output_apb_0_playback_fifo.read
			i2s_output_apb_0_playback_fifo_empty        => CONNECTED_TO_i2s_output_apb_0_playback_fifo_empty,        --                               .empty
			i2s_output_apb_0_playback_fifo_full         => CONNECTED_TO_i2s_output_apb_0_playback_fifo_full,         --                               .full
			i2s_output_apb_0_playback_fifo_clk          => CONNECTED_TO_i2s_output_apb_0_playback_fifo_clk,          --                               .clk
			i2s_output_apb_0_playback_fifo_data         => CONNECTED_TO_i2s_output_apb_0_playback_fifo_data,         --                               .data
			memory_mem_a                                => CONNECTED_TO_memory_mem_a,                                --                         memory.mem_a
			memory_mem_ba                               => CONNECTED_TO_memory_mem_ba,                               --                               .mem_ba
			memory_mem_ck                               => CONNECTED_TO_memory_mem_ck,                               --                               .mem_ck
			memory_mem_ck_n                             => CONNECTED_TO_memory_mem_ck_n,                             --                               .mem_ck_n
			memory_mem_cke                              => CONNECTED_TO_memory_mem_cke,                              --                               .mem_cke
			memory_mem_cs_n                             => CONNECTED_TO_memory_mem_cs_n,                             --                               .mem_cs_n
			memory_mem_ras_n                            => CONNECTED_TO_memory_mem_ras_n,                            --                               .mem_ras_n
			memory_mem_cas_n                            => CONNECTED_TO_memory_mem_cas_n,                            --                               .mem_cas_n
			memory_mem_we_n                             => CONNECTED_TO_memory_mem_we_n,                             --                               .mem_we_n
			memory_mem_reset_n                          => CONNECTED_TO_memory_mem_reset_n,                          --                               .mem_reset_n
			memory_mem_dq                               => CONNECTED_TO_memory_mem_dq,                               --                               .mem_dq
			memory_mem_dqs                              => CONNECTED_TO_memory_mem_dqs,                              --                               .mem_dqs
			memory_mem_dqs_n                            => CONNECTED_TO_memory_mem_dqs_n,                            --                               .mem_dqs_n
			memory_mem_odt                              => CONNECTED_TO_memory_mem_odt,                              --                               .mem_odt
			memory_mem_dm                               => CONNECTED_TO_memory_mem_dm,                               --                               .mem_dm
			memory_oct_rzqin                            => CONNECTED_TO_memory_oct_rzqin,                            --                               .oct_rzqin
			reset_reset_n                               => CONNECTED_TO_reset_reset_n,                               --                          reset.reset_n
			alt_vip_itc_0_clocked_video_vid_clk         => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_clk,         --    alt_vip_itc_0_clocked_video.vid_clk
			alt_vip_itc_0_clocked_video_vid_data        => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_data,        --                               .vid_data
			alt_vip_itc_0_clocked_video_underflow       => CONNECTED_TO_alt_vip_itc_0_clocked_video_underflow,       --                               .underflow
			alt_vip_itc_0_clocked_video_vid_datavalid   => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_datavalid,   --                               .vid_datavalid
			alt_vip_itc_0_clocked_video_vid_v_sync      => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_v_sync,      --                               .vid_v_sync
			alt_vip_itc_0_clocked_video_vid_h_sync      => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_h_sync,      --                               .vid_h_sync
			alt_vip_itc_0_clocked_video_vid_f           => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_f,           --                               .vid_f
			alt_vip_itc_0_clocked_video_vid_h           => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_h,           --                               .vid_h
			alt_vip_itc_0_clocked_video_vid_v           => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_v            --                               .vid_v
		);

