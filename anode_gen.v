`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 11:16:20 AM
// Design Name: 
// Module Name: anode_gen
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


module anode_gen(clk, en, anode);

input clk;

output reg en;

 

output [3:0] anode = 4'b1000;

reg [3:0] bcd_seg = 4'b0000;

reg [3:0] anode = 4'b1000;

 

parameter g_s = 5;

parameter gt = 4;

reg [g_s-1:0] g_count = 0;

 

    always @(posedge clk)

    begin

    g_count = g_count +1;

        if(g_count == 0)

            begin

            if(anode == 4'b0001)

                begin

                anode = 4'b1000;

                end

            else

                begin

                anode = anode >>1;

                end

            end

    end

    always @(posedge clk)

    begin

        if (&g_count[g_s-1:gt])

            begin

            en = 1'b1;

            end

        else

            en = 1'b0;

    end

endmodule
