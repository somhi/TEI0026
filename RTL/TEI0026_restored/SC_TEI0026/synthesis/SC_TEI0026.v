// SC_TEI0026.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module SC_TEI0026 (
		input  wire        clk_clk,           //        clk.clk
		input  wire [2:0]  pio_input_export,  //  pio_input.export
		output wire [20:0] pio_output_export, // pio_output.export
		input  wire        reset_reset_n,     //      reset.reset_n
		input  wire        uart_0_rxd,        //     uart_0.rxd
		output wire        uart_0_txd         //           .txd
	);

	wire         altpll_0_c0_clk;                                            // altpll_0:c0 -> [irq_mapper:clk, mm_interconnect_0:altpll_0_c0_clk, nios2_gen2_0:clk, onchip_memory2_0:clk, pio_Input:clk, pio_Output:clk, rst_controller_001:clk, uart_0:clk]
	wire  [31:0] nios2_gen2_0_data_master_readdata;                          // mm_interconnect_0:nios2_gen2_0_data_master_readdata -> nios2_gen2_0:d_readdata
	wire         nios2_gen2_0_data_master_waitrequest;                       // mm_interconnect_0:nios2_gen2_0_data_master_waitrequest -> nios2_gen2_0:d_waitrequest
	wire         nios2_gen2_0_data_master_debugaccess;                       // nios2_gen2_0:debug_mem_slave_debugaccess_to_roms -> mm_interconnect_0:nios2_gen2_0_data_master_debugaccess
	wire  [16:0] nios2_gen2_0_data_master_address;                           // nios2_gen2_0:d_address -> mm_interconnect_0:nios2_gen2_0_data_master_address
	wire   [3:0] nios2_gen2_0_data_master_byteenable;                        // nios2_gen2_0:d_byteenable -> mm_interconnect_0:nios2_gen2_0_data_master_byteenable
	wire         nios2_gen2_0_data_master_read;                              // nios2_gen2_0:d_read -> mm_interconnect_0:nios2_gen2_0_data_master_read
	wire         nios2_gen2_0_data_master_write;                             // nios2_gen2_0:d_write -> mm_interconnect_0:nios2_gen2_0_data_master_write
	wire  [31:0] nios2_gen2_0_data_master_writedata;                         // nios2_gen2_0:d_writedata -> mm_interconnect_0:nios2_gen2_0_data_master_writedata
	wire  [31:0] nios2_gen2_0_instruction_master_readdata;                   // mm_interconnect_0:nios2_gen2_0_instruction_master_readdata -> nios2_gen2_0:i_readdata
	wire         nios2_gen2_0_instruction_master_waitrequest;                // mm_interconnect_0:nios2_gen2_0_instruction_master_waitrequest -> nios2_gen2_0:i_waitrequest
	wire  [16:0] nios2_gen2_0_instruction_master_address;                    // nios2_gen2_0:i_address -> mm_interconnect_0:nios2_gen2_0_instruction_master_address
	wire         nios2_gen2_0_instruction_master_read;                       // nios2_gen2_0:i_read -> mm_interconnect_0:nios2_gen2_0_instruction_master_read
	wire  [31:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_readdata;    // nios2_gen2_0:debug_mem_slave_readdata -> mm_interconnect_0:nios2_gen2_0_debug_mem_slave_readdata
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_waitrequest; // nios2_gen2_0:debug_mem_slave_waitrequest -> mm_interconnect_0:nios2_gen2_0_debug_mem_slave_waitrequest
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_debugaccess; // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_debugaccess -> nios2_gen2_0:debug_mem_slave_debugaccess
	wire   [8:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_address;     // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_address -> nios2_gen2_0:debug_mem_slave_address
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_read;        // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_read -> nios2_gen2_0:debug_mem_slave_read
	wire   [3:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_byteenable;  // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_byteenable -> nios2_gen2_0:debug_mem_slave_byteenable
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_write;       // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_write -> nios2_gen2_0:debug_mem_slave_write
	wire  [31:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_writedata;   // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_writedata -> nios2_gen2_0:debug_mem_slave_writedata
	wire  [31:0] mm_interconnect_0_altpll_0_pll_slave_readdata;              // altpll_0:readdata -> mm_interconnect_0:altpll_0_pll_slave_readdata
	wire   [1:0] mm_interconnect_0_altpll_0_pll_slave_address;               // mm_interconnect_0:altpll_0_pll_slave_address -> altpll_0:address
	wire         mm_interconnect_0_altpll_0_pll_slave_read;                  // mm_interconnect_0:altpll_0_pll_slave_read -> altpll_0:read
	wire         mm_interconnect_0_altpll_0_pll_slave_write;                 // mm_interconnect_0:altpll_0_pll_slave_write -> altpll_0:write
	wire  [31:0] mm_interconnect_0_altpll_0_pll_slave_writedata;             // mm_interconnect_0:altpll_0_pll_slave_writedata -> altpll_0:writedata
	wire         mm_interconnect_0_onchip_memory2_0_s1_chipselect;           // mm_interconnect_0:onchip_memory2_0_s1_chipselect -> onchip_memory2_0:chipselect
	wire  [31:0] mm_interconnect_0_onchip_memory2_0_s1_readdata;             // onchip_memory2_0:readdata -> mm_interconnect_0:onchip_memory2_0_s1_readdata
	wire  [12:0] mm_interconnect_0_onchip_memory2_0_s1_address;              // mm_interconnect_0:onchip_memory2_0_s1_address -> onchip_memory2_0:address
	wire   [3:0] mm_interconnect_0_onchip_memory2_0_s1_byteenable;           // mm_interconnect_0:onchip_memory2_0_s1_byteenable -> onchip_memory2_0:byteenable
	wire         mm_interconnect_0_onchip_memory2_0_s1_write;                // mm_interconnect_0:onchip_memory2_0_s1_write -> onchip_memory2_0:write
	wire  [31:0] mm_interconnect_0_onchip_memory2_0_s1_writedata;            // mm_interconnect_0:onchip_memory2_0_s1_writedata -> onchip_memory2_0:writedata
	wire         mm_interconnect_0_onchip_memory2_0_s1_clken;                // mm_interconnect_0:onchip_memory2_0_s1_clken -> onchip_memory2_0:clken
	wire         mm_interconnect_0_uart_0_s1_chipselect;                     // mm_interconnect_0:uart_0_s1_chipselect -> uart_0:chipselect
	wire  [15:0] mm_interconnect_0_uart_0_s1_readdata;                       // uart_0:readdata -> mm_interconnect_0:uart_0_s1_readdata
	wire   [2:0] mm_interconnect_0_uart_0_s1_address;                        // mm_interconnect_0:uart_0_s1_address -> uart_0:address
	wire         mm_interconnect_0_uart_0_s1_read;                           // mm_interconnect_0:uart_0_s1_read -> uart_0:read_n
	wire         mm_interconnect_0_uart_0_s1_begintransfer;                  // mm_interconnect_0:uart_0_s1_begintransfer -> uart_0:begintransfer
	wire         mm_interconnect_0_uart_0_s1_write;                          // mm_interconnect_0:uart_0_s1_write -> uart_0:write_n
	wire  [15:0] mm_interconnect_0_uart_0_s1_writedata;                      // mm_interconnect_0:uart_0_s1_writedata -> uart_0:writedata
	wire  [31:0] mm_interconnect_0_pio_input_s1_readdata;                    // pio_Input:readdata -> mm_interconnect_0:pio_Input_s1_readdata
	wire   [1:0] mm_interconnect_0_pio_input_s1_address;                     // mm_interconnect_0:pio_Input_s1_address -> pio_Input:address
	wire         mm_interconnect_0_pio_output_s1_chipselect;                 // mm_interconnect_0:pio_Output_s1_chipselect -> pio_Output:chipselect
	wire  [31:0] mm_interconnect_0_pio_output_s1_readdata;                   // pio_Output:readdata -> mm_interconnect_0:pio_Output_s1_readdata
	wire   [1:0] mm_interconnect_0_pio_output_s1_address;                    // mm_interconnect_0:pio_Output_s1_address -> pio_Output:address
	wire         mm_interconnect_0_pio_output_s1_write;                      // mm_interconnect_0:pio_Output_s1_write -> pio_Output:write_n
	wire  [31:0] mm_interconnect_0_pio_output_s1_writedata;                  // mm_interconnect_0:pio_Output_s1_writedata -> pio_Output:writedata
	wire         irq_mapper_receiver0_irq;                                   // uart_0:irq -> irq_mapper:receiver0_irq
	wire  [31:0] nios2_gen2_0_irq_irq;                                       // irq_mapper:sender_irq -> nios2_gen2_0:irq
	wire         rst_controller_reset_out_reset;                             // rst_controller:reset_out -> [altpll_0:reset, mm_interconnect_0:altpll_0_inclk_interface_reset_reset_bridge_in_reset_reset]
	wire         nios2_gen2_0_debug_reset_request_reset;                     // nios2_gen2_0:debug_reset_request -> [rst_controller:reset_in1, rst_controller_001:reset_in1]
	wire         rst_controller_001_reset_out_reset;                         // rst_controller_001:reset_out -> [irq_mapper:reset, mm_interconnect_0:nios2_gen2_0_reset_reset_bridge_in_reset_reset, nios2_gen2_0:reset_n, onchip_memory2_0:reset, pio_Input:reset_n, pio_Output:reset_n, rst_translator:in_reset, uart_0:reset_n]
	wire         rst_controller_001_reset_out_reset_req;                     // rst_controller_001:reset_req -> [nios2_gen2_0:reset_req, onchip_memory2_0:reset_req, rst_translator:reset_req_in]

	SC_TEI0026_altpll_0 altpll_0 (
		.clk                (clk_clk),                                        //       inclk_interface.clk
		.reset              (rst_controller_reset_out_reset),                 // inclk_interface_reset.reset
		.read               (mm_interconnect_0_altpll_0_pll_slave_read),      //             pll_slave.read
		.write              (mm_interconnect_0_altpll_0_pll_slave_write),     //                      .write
		.address            (mm_interconnect_0_altpll_0_pll_slave_address),   //                      .address
		.readdata           (mm_interconnect_0_altpll_0_pll_slave_readdata),  //                      .readdata
		.writedata          (mm_interconnect_0_altpll_0_pll_slave_writedata), //                      .writedata
		.c0                 (altpll_0_c0_clk),                                //                    c0.clk
		.scandone           (),                                               //           (terminated)
		.scandataout        (),                                               //           (terminated)
		.c1                 (),                                               //           (terminated)
		.c2                 (),                                               //           (terminated)
		.c3                 (),                                               //           (terminated)
		.c4                 (),                                               //           (terminated)
		.areset             (1'b0),                                           //           (terminated)
		.locked             (),                                               //           (terminated)
		.phasedone          (),                                               //           (terminated)
		.phasecounterselect (3'b000),                                         //           (terminated)
		.phaseupdown        (1'b0),                                           //           (terminated)
		.phasestep          (1'b0),                                           //           (terminated)
		.scanclk            (1'b0),                                           //           (terminated)
		.scanclkena         (1'b0),                                           //           (terminated)
		.scandata           (1'b0),                                           //           (terminated)
		.configupdate       (1'b0)                                            //           (terminated)
	);

	SC_TEI0026_nios2_gen2_0 nios2_gen2_0 (
		.clk                                 (altpll_0_c0_clk),                                            //                       clk.clk
		.reset_n                             (~rst_controller_001_reset_out_reset),                        //                     reset.reset_n
		.reset_req                           (rst_controller_001_reset_out_reset_req),                     //                          .reset_req
		.d_address                           (nios2_gen2_0_data_master_address),                           //               data_master.address
		.d_byteenable                        (nios2_gen2_0_data_master_byteenable),                        //                          .byteenable
		.d_read                              (nios2_gen2_0_data_master_read),                              //                          .read
		.d_readdata                          (nios2_gen2_0_data_master_readdata),                          //                          .readdata
		.d_waitrequest                       (nios2_gen2_0_data_master_waitrequest),                       //                          .waitrequest
		.d_write                             (nios2_gen2_0_data_master_write),                             //                          .write
		.d_writedata                         (nios2_gen2_0_data_master_writedata),                         //                          .writedata
		.debug_mem_slave_debugaccess_to_roms (nios2_gen2_0_data_master_debugaccess),                       //                          .debugaccess
		.i_address                           (nios2_gen2_0_instruction_master_address),                    //        instruction_master.address
		.i_read                              (nios2_gen2_0_instruction_master_read),                       //                          .read
		.i_readdata                          (nios2_gen2_0_instruction_master_readdata),                   //                          .readdata
		.i_waitrequest                       (nios2_gen2_0_instruction_master_waitrequest),                //                          .waitrequest
		.irq                                 (nios2_gen2_0_irq_irq),                                       //                       irq.irq
		.debug_reset_request                 (nios2_gen2_0_debug_reset_request_reset),                     //       debug_reset_request.reset
		.debug_mem_slave_address             (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_address),     //           debug_mem_slave.address
		.debug_mem_slave_byteenable          (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_byteenable),  //                          .byteenable
		.debug_mem_slave_debugaccess         (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_debugaccess), //                          .debugaccess
		.debug_mem_slave_read                (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_read),        //                          .read
		.debug_mem_slave_readdata            (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_readdata),    //                          .readdata
		.debug_mem_slave_waitrequest         (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_waitrequest), //                          .waitrequest
		.debug_mem_slave_write               (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_write),       //                          .write
		.debug_mem_slave_writedata           (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_writedata),   //                          .writedata
		.dummy_ci_port                       ()                                                            // custom_instruction_master.readra
	);

	SC_TEI0026_onchip_memory2_0 onchip_memory2_0 (
		.clk        (altpll_0_c0_clk),                                  //   clk1.clk
		.address    (mm_interconnect_0_onchip_memory2_0_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_onchip_memory2_0_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_onchip_memory2_0_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_onchip_memory2_0_s1_write),      //       .write
		.readdata   (mm_interconnect_0_onchip_memory2_0_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_onchip_memory2_0_s1_writedata),  //       .writedata
		.byteenable (mm_interconnect_0_onchip_memory2_0_s1_byteenable), //       .byteenable
		.reset      (rst_controller_001_reset_out_reset),               // reset1.reset
		.reset_req  (rst_controller_001_reset_out_reset_req),           //       .reset_req
		.freeze     (1'b0)                                              // (terminated)
	);

	SC_TEI0026_pio_Input pio_input (
		.clk      (altpll_0_c0_clk),                         //                 clk.clk
		.reset_n  (~rst_controller_001_reset_out_reset),     //               reset.reset_n
		.address  (mm_interconnect_0_pio_input_s1_address),  //                  s1.address
		.readdata (mm_interconnect_0_pio_input_s1_readdata), //                    .readdata
		.in_port  (pio_input_export)                         // external_connection.export
	);

	SC_TEI0026_pio_Output pio_output (
		.clk        (altpll_0_c0_clk),                            //                 clk.clk
		.reset_n    (~rst_controller_001_reset_out_reset),        //               reset.reset_n
		.address    (mm_interconnect_0_pio_output_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_pio_output_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_pio_output_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_pio_output_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_pio_output_s1_readdata),   //                    .readdata
		.out_port   (pio_output_export)                           // external_connection.export
	);

	SC_TEI0026_uart_0 uart_0 (
		.clk           (altpll_0_c0_clk),                           //                 clk.clk
		.reset_n       (~rst_controller_001_reset_out_reset),       //               reset.reset_n
		.address       (mm_interconnect_0_uart_0_s1_address),       //                  s1.address
		.begintransfer (mm_interconnect_0_uart_0_s1_begintransfer), //                    .begintransfer
		.chipselect    (mm_interconnect_0_uart_0_s1_chipselect),    //                    .chipselect
		.read_n        (~mm_interconnect_0_uart_0_s1_read),         //                    .read_n
		.write_n       (~mm_interconnect_0_uart_0_s1_write),        //                    .write_n
		.writedata     (mm_interconnect_0_uart_0_s1_writedata),     //                    .writedata
		.readdata      (mm_interconnect_0_uart_0_s1_readdata),      //                    .readdata
		.rxd           (uart_0_rxd),                                // external_connection.export
		.txd           (uart_0_txd),                                //                    .export
		.irq           (irq_mapper_receiver0_irq)                   //                 irq.irq
	);

	SC_TEI0026_mm_interconnect_0 mm_interconnect_0 (
		.altpll_0_c0_clk                                            (altpll_0_c0_clk),                                            //                                          altpll_0_c0.clk
		.clk_0_clk_clk                                              (clk_clk),                                                    //                                            clk_0_clk.clk
		.altpll_0_inclk_interface_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                             // altpll_0_inclk_interface_reset_reset_bridge_in_reset.reset
		.nios2_gen2_0_reset_reset_bridge_in_reset_reset             (rst_controller_001_reset_out_reset),                         //             nios2_gen2_0_reset_reset_bridge_in_reset.reset
		.nios2_gen2_0_data_master_address                           (nios2_gen2_0_data_master_address),                           //                             nios2_gen2_0_data_master.address
		.nios2_gen2_0_data_master_waitrequest                       (nios2_gen2_0_data_master_waitrequest),                       //                                                     .waitrequest
		.nios2_gen2_0_data_master_byteenable                        (nios2_gen2_0_data_master_byteenable),                        //                                                     .byteenable
		.nios2_gen2_0_data_master_read                              (nios2_gen2_0_data_master_read),                              //                                                     .read
		.nios2_gen2_0_data_master_readdata                          (nios2_gen2_0_data_master_readdata),                          //                                                     .readdata
		.nios2_gen2_0_data_master_write                             (nios2_gen2_0_data_master_write),                             //                                                     .write
		.nios2_gen2_0_data_master_writedata                         (nios2_gen2_0_data_master_writedata),                         //                                                     .writedata
		.nios2_gen2_0_data_master_debugaccess                       (nios2_gen2_0_data_master_debugaccess),                       //                                                     .debugaccess
		.nios2_gen2_0_instruction_master_address                    (nios2_gen2_0_instruction_master_address),                    //                      nios2_gen2_0_instruction_master.address
		.nios2_gen2_0_instruction_master_waitrequest                (nios2_gen2_0_instruction_master_waitrequest),                //                                                     .waitrequest
		.nios2_gen2_0_instruction_master_read                       (nios2_gen2_0_instruction_master_read),                       //                                                     .read
		.nios2_gen2_0_instruction_master_readdata                   (nios2_gen2_0_instruction_master_readdata),                   //                                                     .readdata
		.altpll_0_pll_slave_address                                 (mm_interconnect_0_altpll_0_pll_slave_address),               //                                   altpll_0_pll_slave.address
		.altpll_0_pll_slave_write                                   (mm_interconnect_0_altpll_0_pll_slave_write),                 //                                                     .write
		.altpll_0_pll_slave_read                                    (mm_interconnect_0_altpll_0_pll_slave_read),                  //                                                     .read
		.altpll_0_pll_slave_readdata                                (mm_interconnect_0_altpll_0_pll_slave_readdata),              //                                                     .readdata
		.altpll_0_pll_slave_writedata                               (mm_interconnect_0_altpll_0_pll_slave_writedata),             //                                                     .writedata
		.nios2_gen2_0_debug_mem_slave_address                       (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_address),     //                         nios2_gen2_0_debug_mem_slave.address
		.nios2_gen2_0_debug_mem_slave_write                         (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_write),       //                                                     .write
		.nios2_gen2_0_debug_mem_slave_read                          (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_read),        //                                                     .read
		.nios2_gen2_0_debug_mem_slave_readdata                      (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_readdata),    //                                                     .readdata
		.nios2_gen2_0_debug_mem_slave_writedata                     (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_writedata),   //                                                     .writedata
		.nios2_gen2_0_debug_mem_slave_byteenable                    (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_byteenable),  //                                                     .byteenable
		.nios2_gen2_0_debug_mem_slave_waitrequest                   (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_waitrequest), //                                                     .waitrequest
		.nios2_gen2_0_debug_mem_slave_debugaccess                   (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_debugaccess), //                                                     .debugaccess
		.onchip_memory2_0_s1_address                                (mm_interconnect_0_onchip_memory2_0_s1_address),              //                                  onchip_memory2_0_s1.address
		.onchip_memory2_0_s1_write                                  (mm_interconnect_0_onchip_memory2_0_s1_write),                //                                                     .write
		.onchip_memory2_0_s1_readdata                               (mm_interconnect_0_onchip_memory2_0_s1_readdata),             //                                                     .readdata
		.onchip_memory2_0_s1_writedata                              (mm_interconnect_0_onchip_memory2_0_s1_writedata),            //                                                     .writedata
		.onchip_memory2_0_s1_byteenable                             (mm_interconnect_0_onchip_memory2_0_s1_byteenable),           //                                                     .byteenable
		.onchip_memory2_0_s1_chipselect                             (mm_interconnect_0_onchip_memory2_0_s1_chipselect),           //                                                     .chipselect
		.onchip_memory2_0_s1_clken                                  (mm_interconnect_0_onchip_memory2_0_s1_clken),                //                                                     .clken
		.pio_Input_s1_address                                       (mm_interconnect_0_pio_input_s1_address),                     //                                         pio_Input_s1.address
		.pio_Input_s1_readdata                                      (mm_interconnect_0_pio_input_s1_readdata),                    //                                                     .readdata
		.pio_Output_s1_address                                      (mm_interconnect_0_pio_output_s1_address),                    //                                        pio_Output_s1.address
		.pio_Output_s1_write                                        (mm_interconnect_0_pio_output_s1_write),                      //                                                     .write
		.pio_Output_s1_readdata                                     (mm_interconnect_0_pio_output_s1_readdata),                   //                                                     .readdata
		.pio_Output_s1_writedata                                    (mm_interconnect_0_pio_output_s1_writedata),                  //                                                     .writedata
		.pio_Output_s1_chipselect                                   (mm_interconnect_0_pio_output_s1_chipselect),                 //                                                     .chipselect
		.uart_0_s1_address                                          (mm_interconnect_0_uart_0_s1_address),                        //                                            uart_0_s1.address
		.uart_0_s1_write                                            (mm_interconnect_0_uart_0_s1_write),                          //                                                     .write
		.uart_0_s1_read                                             (mm_interconnect_0_uart_0_s1_read),                           //                                                     .read
		.uart_0_s1_readdata                                         (mm_interconnect_0_uart_0_s1_readdata),                       //                                                     .readdata
		.uart_0_s1_writedata                                        (mm_interconnect_0_uart_0_s1_writedata),                      //                                                     .writedata
		.uart_0_s1_begintransfer                                    (mm_interconnect_0_uart_0_s1_begintransfer),                  //                                                     .begintransfer
		.uart_0_s1_chipselect                                       (mm_interconnect_0_uart_0_s1_chipselect)                      //                                                     .chipselect
	);

	SC_TEI0026_irq_mapper irq_mapper (
		.clk           (altpll_0_c0_clk),                    //       clk.clk
		.reset         (rst_controller_001_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),           // receiver0.irq
		.sender_irq    (nios2_gen2_0_irq_irq)                //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                         // reset_in0.reset
		.reset_in1      (nios2_gen2_0_debug_reset_request_reset), // reset_in1.reset
		.clk            (clk_clk),                                //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),         // reset_out.reset
		.reset_req      (),                                       // (terminated)
		.reset_req_in0  (1'b0),                                   // (terminated)
		.reset_req_in1  (1'b0),                                   // (terminated)
		.reset_in2      (1'b0),                                   // (terminated)
		.reset_req_in2  (1'b0),                                   // (terminated)
		.reset_in3      (1'b0),                                   // (terminated)
		.reset_req_in3  (1'b0),                                   // (terminated)
		.reset_in4      (1'b0),                                   // (terminated)
		.reset_req_in4  (1'b0),                                   // (terminated)
		.reset_in5      (1'b0),                                   // (terminated)
		.reset_req_in5  (1'b0),                                   // (terminated)
		.reset_in6      (1'b0),                                   // (terminated)
		.reset_req_in6  (1'b0),                                   // (terminated)
		.reset_in7      (1'b0),                                   // (terminated)
		.reset_req_in7  (1'b0),                                   // (terminated)
		.reset_in8      (1'b0),                                   // (terminated)
		.reset_req_in8  (1'b0),                                   // (terminated)
		.reset_in9      (1'b0),                                   // (terminated)
		.reset_req_in9  (1'b0),                                   // (terminated)
		.reset_in10     (1'b0),                                   // (terminated)
		.reset_req_in10 (1'b0),                                   // (terminated)
		.reset_in11     (1'b0),                                   // (terminated)
		.reset_req_in11 (1'b0),                                   // (terminated)
		.reset_in12     (1'b0),                                   // (terminated)
		.reset_req_in12 (1'b0),                                   // (terminated)
		.reset_in13     (1'b0),                                   // (terminated)
		.reset_req_in13 (1'b0),                                   // (terminated)
		.reset_in14     (1'b0),                                   // (terminated)
		.reset_req_in14 (1'b0),                                   // (terminated)
		.reset_in15     (1'b0),                                   // (terminated)
		.reset_req_in15 (1'b0)                                    // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller_001 (
		.reset_in0      (~reset_reset_n),                         // reset_in0.reset
		.reset_in1      (nios2_gen2_0_debug_reset_request_reset), // reset_in1.reset
		.clk            (altpll_0_c0_clk),                        //       clk.clk
		.reset_out      (rst_controller_001_reset_out_reset),     // reset_out.reset
		.reset_req      (rst_controller_001_reset_out_reset_req), //          .reset_req
		.reset_req_in0  (1'b0),                                   // (terminated)
		.reset_req_in1  (1'b0),                                   // (terminated)
		.reset_in2      (1'b0),                                   // (terminated)
		.reset_req_in2  (1'b0),                                   // (terminated)
		.reset_in3      (1'b0),                                   // (terminated)
		.reset_req_in3  (1'b0),                                   // (terminated)
		.reset_in4      (1'b0),                                   // (terminated)
		.reset_req_in4  (1'b0),                                   // (terminated)
		.reset_in5      (1'b0),                                   // (terminated)
		.reset_req_in5  (1'b0),                                   // (terminated)
		.reset_in6      (1'b0),                                   // (terminated)
		.reset_req_in6  (1'b0),                                   // (terminated)
		.reset_in7      (1'b0),                                   // (terminated)
		.reset_req_in7  (1'b0),                                   // (terminated)
		.reset_in8      (1'b0),                                   // (terminated)
		.reset_req_in8  (1'b0),                                   // (terminated)
		.reset_in9      (1'b0),                                   // (terminated)
		.reset_req_in9  (1'b0),                                   // (terminated)
		.reset_in10     (1'b0),                                   // (terminated)
		.reset_req_in10 (1'b0),                                   // (terminated)
		.reset_in11     (1'b0),                                   // (terminated)
		.reset_req_in11 (1'b0),                                   // (terminated)
		.reset_in12     (1'b0),                                   // (terminated)
		.reset_req_in12 (1'b0),                                   // (terminated)
		.reset_in13     (1'b0),                                   // (terminated)
		.reset_req_in13 (1'b0),                                   // (terminated)
		.reset_in14     (1'b0),                                   // (terminated)
		.reset_req_in14 (1'b0),                                   // (terminated)
		.reset_in15     (1'b0),                                   // (terminated)
		.reset_req_in15 (1'b0)                                    // (terminated)
	);

endmodule
