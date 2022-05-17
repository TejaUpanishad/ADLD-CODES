`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:16:54 03/11/2022 
// Design Name: 
// Module Name:    mux881 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux881(d0,d1,d2,d3,d4,d5,d6,d7,s0,s1,s2,y);
input d0,d1,d2,d3,d4,d5,d6,d7;
input s0,s1,s2;
 output reg  y;
always @(d0,d1,d2,d3,d4,d5,d6,d7,s0,s1,s2)
begin 
y=(d0&~s0&~s1&~s2)|(d1&~s0&~s1&s2)| (d2&~s0&s1&~s2)| (d3&~s0&s1&s2)| (d4&s0&s1&s2)| (d5&s0&~s1&s2)| (d6&s0&s1&~s2)| (d7&s0&s1&s2);
end

    endmodule
