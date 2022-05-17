`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:55 03/14/2022 
// Design Name: 
// Module Name:    mux441 
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
module mux441(
    input s0,
    input s1,
    input d0,
    input d1,
    input d2,
    input d3,
    output reg y
    );
	 always@ (s0,s1,d0,d1,d2,d3,y)
	 begin
	 y=(d0&~s0&~s1)|(d1&~s0&s1)|(d2&s0&~s1)|(d3&s0&s1);
    end
    



endmodule
