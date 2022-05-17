`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:33 03/15/2022 
// Design Name: 
// Module Name:    dataapathh 
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
module dataapathh(
    output eqz,
    input lda,
    input ldb,
    input ldp,
    input clrp,
    input decb,
    input [15:0] data_in,
    input clk
    );
wire [15:0] x,y,z,bout,bus;
PIPO1 A(x,bus,lda,clk);
PIPO2 P(y,z,ldp,clrp,clk);
CNTR B(bout,bus,ldb,decb,clk);
ADD AD(z,x,y);
EQZ COMP(eqz,);


endmodule
