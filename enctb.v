`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:44 05/17/2022 
// Design Name: 
// Module Name:    enctb 
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
module enctb;

// Inputs
reg d0;
reg d1;
reg d2;
reg d3;
reg d4;
reg d5;
reg d6;
reg d7;

// Outputs
wire a;
wire b;
wire c;

// Instantiate the Unit Under Test (UUT)
Encoder uut (
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.d4(d4),
.d5(d5),
.d6(d6),
.d7(d7),
.a(a),
.b(b),
.c(c)
);

initial begin
// Initialize Inputs
d0 = 0;
d1 = 0;
d2 = 0;
d3 = 0;
d4 = 0;
d5 = 0;
d6 = 0;
d7 = 0;

// Wait 100 ns for global reset to finish
#100;

d0 = 0;
d1 = 0;
d2 = 0;
d3 = 1;
d4 = 0;
d5 = 0;
d6 = 0;
d7 = 0;
// Wait 100 ns for global reset to finish
#100;
// Add stimulus here
end

endmodule
