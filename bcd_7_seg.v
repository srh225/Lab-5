`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 02:03:39 PM
// Design Name: 
// Module Name: bcd_7_seg
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


module Seven_seg_decoder (clk, bcd, SEG);

    input clk;

    input [3:0] bcd;

    output reg [6:0] SEG;

   

    always @(posedge clk)

    begin

        case(bcd)

            0 : SEG = 7'b1000000;

            1 : SEG = 7'b1111001;

            2 : SEG = 7'b0100100;

            3 : SEG = 7'b0110000;

            4 : SEG = 7'b0011001;

            5 : SEG = 7'b0010010;

            6 : SEG = 7'b0000010;

            7 : SEG = 7'b1111000;

            8 : SEG = 7'b0000000;

            9 : SEG = 7'b0010000;

            default : SEG = 7'b1111111;

        endcase

    end

endmodule