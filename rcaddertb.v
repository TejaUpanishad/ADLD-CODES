`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:48 05/17/2022 
// Design Name: 
// Module Name:    rcaddertb 
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
module rcaddertb;

 reg [3:0] A;

 reg [3:0] B;

 reg Cin;

 // Outputs

 wire [3:0] Sum;

 wire Cout;

 
 Adder4bit uut (

                 .A(A), 

                 .B(B), 

                 .Cin(Cin), 

                 .Sum(Sum), 

                 .Cout(Cout)

                );

 initial begin

  // Initialize Inputs

  A    = 4'b0;

  B    = 4'b0;

  Cin  = 4'b0;

  // Wait 100 ns for global reset to finish

  #100;

  // Add stimulus here

  A    = 4'b1011;

  B    = 4'b0100;

  Cin  = 4'b0;

  #20;

  A=4'b1111;

  B= 4'b1101;

  Cin= 4'b1;

 end
endmodule


