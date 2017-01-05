
module soc_system (
	clk_clk,
	clock_bridge_0_out_clk_clk,
	clock_bridge_44_out_clk_clk,
	clock_bridge_48_out_clk_clk,
	hps_0_f2h_dma_req0_dma_req,
	hps_0_f2h_dma_req0_dma_single,
	hps_0_f2h_dma_req0_dma_ack,
	hps_0_f2h_dma_req1_dma_req,
	hps_0_f2h_dma_req1_dma_single,
	hps_0_f2h_dma_req1_dma_ack,
	hps_0_f2h_dma_req2_dma_req,
	hps_0_f2h_dma_req2_dma_single,
	hps_0_f2h_dma_req2_dma_ack,
	hps_0_f2h_dma_req3_dma_req,
	hps_0_f2h_dma_req3_dma_single,
	hps_0_f2h_dma_req3_dma_ack,
	hps_0_h2f_reset_reset_n,
	hps_io_hps_io_emac1_inst_TX_CLK,
	hps_io_hps_io_emac1_inst_TXD0,
	hps_io_hps_io_emac1_inst_TXD1,
	hps_io_hps_io_emac1_inst_TXD2,
	hps_io_hps_io_emac1_inst_TXD3,
	hps_io_hps_io_emac1_inst_RXD0,
	hps_io_hps_io_emac1_inst_MDIO,
	hps_io_hps_io_emac1_inst_MDC,
	hps_io_hps_io_emac1_inst_RX_CTL,
	hps_io_hps_io_emac1_inst_TX_CTL,
	hps_io_hps_io_emac1_inst_RX_CLK,
	hps_io_hps_io_emac1_inst_RXD1,
	hps_io_hps_io_emac1_inst_RXD2,
	hps_io_hps_io_emac1_inst_RXD3,
	hps_io_hps_io_qspi_inst_IO0,
	hps_io_hps_io_qspi_inst_IO1,
	hps_io_hps_io_qspi_inst_IO2,
	hps_io_hps_io_qspi_inst_IO3,
	hps_io_hps_io_qspi_inst_SS0,
	hps_io_hps_io_qspi_inst_CLK,
	hps_io_hps_io_sdio_inst_CMD,
	hps_io_hps_io_sdio_inst_D0,
	hps_io_hps_io_sdio_inst_D1,
	hps_io_hps_io_sdio_inst_CLK,
	hps_io_hps_io_sdio_inst_D2,
	hps_io_hps_io_sdio_inst_D3,
	hps_io_hps_io_usb1_inst_D0,
	hps_io_hps_io_usb1_inst_D1,
	hps_io_hps_io_usb1_inst_D2,
	hps_io_hps_io_usb1_inst_D3,
	hps_io_hps_io_usb1_inst_D4,
	hps_io_hps_io_usb1_inst_D5,
	hps_io_hps_io_usb1_inst_D6,
	hps_io_hps_io_usb1_inst_D7,
	hps_io_hps_io_usb1_inst_CLK,
	hps_io_hps_io_usb1_inst_STP,
	hps_io_hps_io_usb1_inst_DIR,
	hps_io_hps_io_usb1_inst_NXT,
	hps_io_hps_io_spim1_inst_CLK,
	hps_io_hps_io_spim1_inst_MOSI,
	hps_io_hps_io_spim1_inst_MISO,
	hps_io_hps_io_spim1_inst_SS0,
	hps_io_hps_io_uart0_inst_RX,
	hps_io_hps_io_uart0_inst_TX,
	hps_io_hps_io_i2c0_inst_SDA,
	hps_io_hps_io_i2c0_inst_SCL,
	hps_io_hps_io_i2c1_inst_SDA,
	hps_io_hps_io_i2c1_inst_SCL,
	hps_io_hps_io_gpio_inst_GPIO09,
	hps_io_hps_io_gpio_inst_GPIO35,
	hps_io_hps_io_gpio_inst_GPIO40,
	hps_io_hps_io_gpio_inst_GPIO48,
	hps_io_hps_io_gpio_inst_GPIO53,
	hps_io_hps_io_gpio_inst_GPIO54,
	hps_io_hps_io_gpio_inst_GPIO61,
	i2s_clkctrl_apb_0_conduit_playback_lrclk,
	i2s_clkctrl_apb_0_conduit_clk_sel_48_44,
	i2s_clkctrl_apb_0_conduit_master_slave_mode,
	i2s_clkctrl_apb_0_conduit_bclk,
	i2s_clkctrl_apb_0_conduit_capture_lrclk,
	i2s_clkctrl_apb_0_ext_bclk,
	i2s_clkctrl_apb_0_ext_capture_lrclk,
	i2s_clkctrl_apb_0_ext_playback_lrclk,
	i2s_clkctrl_apb_0_mclk_clk,
	i2s_output_apb_0_capture_dma_req,
	i2s_output_apb_0_capture_dma_ack,
	i2s_output_apb_0_capture_dma_enable,
	i2s_output_apb_0_capture_fifo_data,
	i2s_output_apb_0_capture_fifo_write,
	i2s_output_apb_0_capture_fifo_full,
	i2s_output_apb_0_capture_fifo_clk,
	i2s_output_apb_0_capture_fifo_empty,
	i2s_output_apb_0_playback_dma_req,
	i2s_output_apb_0_playback_dma_ack,
	i2s_output_apb_0_playback_dma_enable,
	i2s_output_apb_0_playback_fifo_read,
	i2s_output_apb_0_playback_fifo_empty,
	i2s_output_apb_0_playback_fifo_full,
	i2s_output_apb_0_playback_fifo_clk,
	i2s_output_apb_0_playback_fifo_data,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	memory_mem_dm,
	memory_oct_rzqin,
	reset_reset_n,
	alt_vip_itc_0_clocked_video_vid_clk,
	alt_vip_itc_0_clocked_video_vid_data,
	alt_vip_itc_0_clocked_video_underflow,
	alt_vip_itc_0_clocked_video_vid_datavalid,
	alt_vip_itc_0_clocked_video_vid_v_sync,
	alt_vip_itc_0_clocked_video_vid_h_sync,
	alt_vip_itc_0_clocked_video_vid_f,
	alt_vip_itc_0_clocked_video_vid_h,
	alt_vip_itc_0_clocked_video_vid_v);	

	input		clk_clk;
	output		clock_bridge_0_out_clk_clk;
	output		clock_bridge_44_out_clk_clk;
	output		clock_bridge_48_out_clk_clk;
	input		hps_0_f2h_dma_req0_dma_req;
	input		hps_0_f2h_dma_req0_dma_single;
	output		hps_0_f2h_dma_req0_dma_ack;
	input		hps_0_f2h_dma_req1_dma_req;
	input		hps_0_f2h_dma_req1_dma_single;
	output		hps_0_f2h_dma_req1_dma_ack;
	input		hps_0_f2h_dma_req2_dma_req;
	input		hps_0_f2h_dma_req2_dma_single;
	output		hps_0_f2h_dma_req2_dma_ack;
	input		hps_0_f2h_dma_req3_dma_req;
	input		hps_0_f2h_dma_req3_dma_single;
	output		hps_0_f2h_dma_req3_dma_ack;
	output		hps_0_h2f_reset_reset_n;
	output		hps_io_hps_io_emac1_inst_TX_CLK;
	output		hps_io_hps_io_emac1_inst_TXD0;
	output		hps_io_hps_io_emac1_inst_TXD1;
	output		hps_io_hps_io_emac1_inst_TXD2;
	output		hps_io_hps_io_emac1_inst_TXD3;
	input		hps_io_hps_io_emac1_inst_RXD0;
	inout		hps_io_hps_io_emac1_inst_MDIO;
	output		hps_io_hps_io_emac1_inst_MDC;
	input		hps_io_hps_io_emac1_inst_RX_CTL;
	output		hps_io_hps_io_emac1_inst_TX_CTL;
	input		hps_io_hps_io_emac1_inst_RX_CLK;
	input		hps_io_hps_io_emac1_inst_RXD1;
	input		hps_io_hps_io_emac1_inst_RXD2;
	input		hps_io_hps_io_emac1_inst_RXD3;
	inout		hps_io_hps_io_qspi_inst_IO0;
	inout		hps_io_hps_io_qspi_inst_IO1;
	inout		hps_io_hps_io_qspi_inst_IO2;
	inout		hps_io_hps_io_qspi_inst_IO3;
	output		hps_io_hps_io_qspi_inst_SS0;
	output		hps_io_hps_io_qspi_inst_CLK;
	inout		hps_io_hps_io_sdio_inst_CMD;
	inout		hps_io_hps_io_sdio_inst_D0;
	inout		hps_io_hps_io_sdio_inst_D1;
	output		hps_io_hps_io_sdio_inst_CLK;
	inout		hps_io_hps_io_sdio_inst_D2;
	inout		hps_io_hps_io_sdio_inst_D3;
	inout		hps_io_hps_io_usb1_inst_D0;
	inout		hps_io_hps_io_usb1_inst_D1;
	inout		hps_io_hps_io_usb1_inst_D2;
	inout		hps_io_hps_io_usb1_inst_D3;
	inout		hps_io_hps_io_usb1_inst_D4;
	inout		hps_io_hps_io_usb1_inst_D5;
	inout		hps_io_hps_io_usb1_inst_D6;
	inout		hps_io_hps_io_usb1_inst_D7;
	input		hps_io_hps_io_usb1_inst_CLK;
	output		hps_io_hps_io_usb1_inst_STP;
	input		hps_io_hps_io_usb1_inst_DIR;
	input		hps_io_hps_io_usb1_inst_NXT;
	output		hps_io_hps_io_spim1_inst_CLK;
	output		hps_io_hps_io_spim1_inst_MOSI;
	input		hps_io_hps_io_spim1_inst_MISO;
	output		hps_io_hps_io_spim1_inst_SS0;
	input		hps_io_hps_io_uart0_inst_RX;
	output		hps_io_hps_io_uart0_inst_TX;
	inout		hps_io_hps_io_i2c0_inst_SDA;
	inout		hps_io_hps_io_i2c0_inst_SCL;
	inout		hps_io_hps_io_i2c1_inst_SDA;
	inout		hps_io_hps_io_i2c1_inst_SCL;
	inout		hps_io_hps_io_gpio_inst_GPIO09;
	inout		hps_io_hps_io_gpio_inst_GPIO35;
	inout		hps_io_hps_io_gpio_inst_GPIO40;
	inout		hps_io_hps_io_gpio_inst_GPIO48;
	inout		hps_io_hps_io_gpio_inst_GPIO53;
	inout		hps_io_hps_io_gpio_inst_GPIO54;
	inout		hps_io_hps_io_gpio_inst_GPIO61;
	output		i2s_clkctrl_apb_0_conduit_playback_lrclk;
	output		i2s_clkctrl_apb_0_conduit_clk_sel_48_44;
	output		i2s_clkctrl_apb_0_conduit_master_slave_mode;
	output		i2s_clkctrl_apb_0_conduit_bclk;
	output		i2s_clkctrl_apb_0_conduit_capture_lrclk;
	input		i2s_clkctrl_apb_0_ext_bclk;
	input		i2s_clkctrl_apb_0_ext_capture_lrclk;
	input		i2s_clkctrl_apb_0_ext_playback_lrclk;
	output		i2s_clkctrl_apb_0_mclk_clk;
	output		i2s_output_apb_0_capture_dma_req;
	input		i2s_output_apb_0_capture_dma_ack;
	output		i2s_output_apb_0_capture_dma_enable;
	input	[63:0]	i2s_output_apb_0_capture_fifo_data;
	input		i2s_output_apb_0_capture_fifo_write;
	output		i2s_output_apb_0_capture_fifo_full;
	input		i2s_output_apb_0_capture_fifo_clk;
	output		i2s_output_apb_0_capture_fifo_empty;
	output		i2s_output_apb_0_playback_dma_req;
	input		i2s_output_apb_0_playback_dma_ack;
	output		i2s_output_apb_0_playback_dma_enable;
	input		i2s_output_apb_0_playback_fifo_read;
	output		i2s_output_apb_0_playback_fifo_empty;
	output		i2s_output_apb_0_playback_fifo_full;
	input		i2s_output_apb_0_playback_fifo_clk;
	output	[63:0]	i2s_output_apb_0_playback_fifo_data;
	output	[14:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output		memory_mem_ck;
	output		memory_mem_ck_n;
	output		memory_mem_cke;
	output		memory_mem_cs_n;
	output		memory_mem_ras_n;
	output		memory_mem_cas_n;
	output		memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[31:0]	memory_mem_dq;
	inout	[3:0]	memory_mem_dqs;
	inout	[3:0]	memory_mem_dqs_n;
	output		memory_mem_odt;
	output	[3:0]	memory_mem_dm;
	input		memory_oct_rzqin;
	input		reset_reset_n;
	input		alt_vip_itc_0_clocked_video_vid_clk;
	output	[31:0]	alt_vip_itc_0_clocked_video_vid_data;
	output		alt_vip_itc_0_clocked_video_underflow;
	output		alt_vip_itc_0_clocked_video_vid_datavalid;
	output		alt_vip_itc_0_clocked_video_vid_v_sync;
	output		alt_vip_itc_0_clocked_video_vid_h_sync;
	output		alt_vip_itc_0_clocked_video_vid_f;
	output		alt_vip_itc_0_clocked_video_vid_h;
	output		alt_vip_itc_0_clocked_video_vid_v;
endmodule
