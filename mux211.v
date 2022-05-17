`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:48:46 03/11/2022 
// Design Name: 
// Module Name:    mux211 
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
module mux211(d0,d1,s,y); 
input d0,d1;
input s;
output y;
reg Output y;
always@(d0,d1,s)
begin
assign y=(d0&~s)|(d1&s);
end
endmodule
   



