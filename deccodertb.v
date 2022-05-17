`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:12 05/17/2022 
// Design Name: 
// Module Name:    deccodertb 
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
module deccodertb;
wire [7:0] out;
reg en;
reg [2:0] in;
integer i;
 
decoder3_to_8 dut(in,out,en);
 
initial begin  
 $monitor( "en=%b, in=%d, out=%b ", en, in, out);
   for ( i=0; i<16; i=i+1) 
        begin
           {en,in}  = i;
            #1;
        end
end

endmodule
