`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 11:18:12 AM
// Design Name: 
// Module Name: Mux4_to_1
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


module Mux4_to_1(anode, bcd_seg, en, bcd_in, sseg_a_o);

    input en;

    input [3:0] anode;

    input [15:0] bcd_in;

    output [3:0] sseg_a_o;

    output reg [3:0] bcd_seg;

   

    always @(*)

    begin

        if(en)

        begin

            case(anode)

                4'b1000 : bcd_seg = bcd_in[15:12];

                4'b0100 : bcd_seg = bcd_in[11:8];

                4'b0010 : bcd_seg = bcd_in[7:4];

                4'b0001 : bcd_seg = bcd_in[3:0];

                default : bcd_seg = 4'b1111;

            endcase

        end

    end

    assign sseg_a_o = ~anode;

endmodule
