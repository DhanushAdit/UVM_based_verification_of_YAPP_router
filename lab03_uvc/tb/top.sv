/*-----------------------------------------------------------------
File name     : top.sv
Description   : lab01_data top module template file
Notes         : From the Cadence "SystemVerilog Advanced Verification with UVM" training
-------------------------------------------------------------------
Copyright Cadence Design Systems (c)2015
-----------------------------------------------------------------*/

module top();
// import the UVM library
import uvm_pkg::*;

// include the UVM macros
`include "uvm_macros.svh"

// import the YAPP package
import yapp_pkg::*;

`include "router_test_lib.sv"
uvm_table_printer custom = new();

initial begin

//instantiating yapp_packet
yapp_packet packet;
int ok;
//constructing the yapp_packet
packet = new("packet");
run_test();
// generate 5 random packets and use the print method
// to display the results

// experiment with the copy, clone and compare UVM method

end
endmodule : top
