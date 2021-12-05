`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:55 11/30/2021 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(A, B, Cin, Cout, Sum);

	input A, B, Cin;
	output Cout, Sum;
	
	wire S;
	wire [1:0] C;

	half_adder HA_1(.A(A), .B(B), .Cout(C[0]), .Sum(S));
	half_adder HA_2(.A(S), .B(Cin), .Cout(C[1]), .Sum(Sum));
	
	assign Cout = C[0] | C[1];
	
endmodule
