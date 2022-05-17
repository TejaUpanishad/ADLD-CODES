`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:10 04/18/2022 
// Design Name: 
// Module Name:    pipeline_test 
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
module pipeline_test;
parameter N=10;
wire [N-1:0]F;
reg [N-1:0] A,B,C,D;
reg clk;
pipe_ex MYPIPE (F,A,B,C,D,clk);
initial clk=0;
always #10 clk=~clk;
initial
begin
#5 A=10; B=12; C=6; D=3; // F=75 (4Bh)
#20 A=10; B=10; C=5; D=3; // F=66 (42h)
#20 A=20; B=11; C=1; D=4; // F=112 (470h)
#20 A=15; B=10; C=8; D=2; // F=62 (3Eh)
#20 A=8; B=15; C=5; D=0; // F=0 (00h)
#20 A=10; B=20; C=5; D=3; // F=66 (42h)
#20 A=10; B=10; C=30; D=1; // F=49 (31h)
#20 A=30; B=1; C=2; D=4; // F=116 (74h)
end
initial
begin
$dumpfile("pipe1.vod");
$dumpvars(0,pipeline_test);
$monitor("time:%d,F=%d",$time,F);
#300 $finish;
end
endmodule
