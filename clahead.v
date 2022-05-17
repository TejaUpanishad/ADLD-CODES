`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:23:45 03/07/2022 
// Design Name: 
// Module Name:    clahead 
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
module clahead(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output sum,
    output cout
    );
	 
	 wire p0,p1,p2,p3,g0,g1,g2,g3,c1,c2,c3;
	 time delay =4;
assign #delay p0=(a[0]^b[0]);
assign #delay p1=(a[1]^b[1]);
assign #delay p2=(a[2]^b[2]);
assign #delay p3=(a[3]^b[3]);
assign #delay g0=(a[0]&b[0]);
assign #delay g1=(a[1]&b[1]);
assign #delay g2=(a[2]&b[2]);
assign #delay g3=(a[3]&b[3]);
assign #delay c0=cin;
assign #delay c1=g0|(p0&cin);
assign #delay c2=g1|(p1&g0)|(p1&p0&cin);
assign #delay c3=g2|(p2&g1)|(p2&p1&g0)|(p1&p1&p0&cin);
assign #delay c4=g3|(p3&g2)|(p3&p2&g1)|(p3&p2&p1&g0)|(p3&p2&p1&p0&cin);
assign #delay  sum[0]=(p0^g0^cin);
assign #delay  sum[1]=(p1^g1)^c1;
assign #delay  sum[2]=(p2^g2)^c2;
assign #delay  sum[3]=(p3^g3)^c3;



endmodule

	 
	 
	