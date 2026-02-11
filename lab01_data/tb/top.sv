/*-----------------------------------------------------------------
File name     : top.sv
Description   : lab01_data top module template file
Notes         : From the Cadence "SystemVerilog Advanced Verification with UVM" training
-------------------------------------------------------------------
Copyright Cadence Design Systems (c)2015
-----------------------------------------------------------------*/

module top;
// import the UVM library
import uvm_pkg::*;

// include the UVM macros
`include "uvm_macros.svh"


uvm_table_printer custom = new();
// import the YAPP package
import yapp_pkg::*;

initial begin

//instantiating yapp_packet
yapp_packet packet;

//constructing the yapp_packet
packet = new("packet");
int ok;
// generate 5 random packets and use the print method
// to display the results
for(int i =0; i <5 ; i++) begin
    packet = new($sformatf("packet%d",i));
    ok = packet.randomize();
    packet.print();
end

// experiment with the copy, clone and compare UVM method

end
endmodule : top
