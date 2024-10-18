`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 01:56:15 PM
// Design Name: 
// Module Name: Multi_Seg_Driver
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Multi_Seg_Driver(clk,bcd_in,sseg_a_o,sseg_c_o);

input clk;

input [15:0] bcd_in;

output [3:0] sseg_a_o;

output [6:0] sseg_c_o;

 

wire en;

wire [3:0] anode, bcd_seg;

 

anode_gen UUT1(clk, en, anode);

 

Mux4_to_1 UUT2(anode, bcd_seg, en, bcd_in, sseg_a_o);

 

Seven_seg_decoder  UUT3(clk, bcd_seg, sseg_c_o);

 

endmodule
