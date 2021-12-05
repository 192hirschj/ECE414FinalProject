`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:30:16 12/04/2021 
// Design Name: 
// Module Name:    Shifter 
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
module barrel_shifter_16(Y, A, S);
   output [15:0] Y;  // The shifted result.
   input [15:0]  A;  // The value to be shifted.
   input [3:0] 	 S;  // The amount to shift.

   multiplexer_16_4 #(1) mux0(Y[0], 
			      A[0], A[1], A[2], A[3], A[4], A[5], A[6], A[7],
			      A[8], A[9], A[10], A[11], A[12], A[13], A[14], A[15], 
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux1(Y[1], 
			      A[1], A[2], A[3], A[4], A[5], A[6], A[7], A[8], 
			      A[9], A[10], A[11], A[12], A[13], A[14], A[15], A[0],
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux2(Y[2], 
			      A[2], A[3], A[4], A[5], A[6], A[7], A[8], A[9], 
			      A[10], A[11], A[12], A[13], A[14], A[15], A[0], A[1], 
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux3(Y[3], 
			      A[3], A[4], A[5], A[6], A[7], A[8], A[9], A[10], 
			      A[11], A[12], A[13], A[14], A[15], A[0], A[1], A[2],  
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux4(Y[4], 
			      A[4], A[5], A[6], A[7], A[8], A[9], A[10], A[11], 
			      A[12], A[13], A[14], A[15], A[0], A[1], A[2], A[3],  
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux5(Y[5], 
			      A[5], A[6], A[7], A[8], A[9], A[10], A[11], A[12], 
			      A[13], A[14], A[15], A[0], A[1], A[2], A[3], A[4], 
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux6(Y[6], 
			      A[6], A[7], A[8], A[9], A[10], A[11], A[12], A[13], 
			      A[14], A[15], A[0], A[1], A[2], A[3], A[4], A[5], 
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux7(Y[7], 
			      A[7], A[8], A[9], A[10], A[11], A[12], A[13], A[14], 
			      A[15], A[0], A[1], A[2], A[3], A[4], A[5], A[6], 
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux8(Y[8], 
			      A[8], A[9], A[10], A[11], A[12], A[13], A[14], A[15], 
			      A[0], A[1], A[2], A[3], A[4], A[5], A[6], A[7], 
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux9(Y[9], 
			      A[9], A[10], A[11], A[12], A[13], A[14], A[15], A[0], 
			      A[1], A[2], A[3], A[4], A[5], A[6], A[7], A[8], 
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux10(Y[10], 
			      A[10], A[11], A[12], A[13], A[14], A[15], A[0], A[1], 
			      A[2], A[3], A[4], A[5], A[6], A[7], A[8], A[9], 
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux11(Y[11], 
			      A[11], A[12], A[13], A[14], A[15], A[0], A[1], A[2], 
			      A[3], A[4], A[5], A[6], A[7], A[8], A[9], A[10], 
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux12(Y[12], 
			      A[12], A[13], A[14], A[15], A[0], A[1], A[2], A[3], 
			      A[4], A[5], A[6], A[7], A[8], A[9], A[10], A[11], 
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux13(Y[13], 
			      A[13], A[14], A[15], A[0], A[1], A[2], A[3], A[4], 
			      A[5], A[6], A[7], A[8], A[9], A[10], A[11], A[12], 
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux14(Y[14], 
			      A[14], A[15], A[0], A[1], A[2], A[3], A[4], A[5], 
			      A[6], A[7], A[8], A[9], A[10], A[11], A[12], A[13], 
			      S[3], S[2], S[1], S[0]);
   multiplexer_16_4 #(1) mux15(Y[15], 
			      A[15], A[0], A[1], A[2], A[3], A[4], A[5], A[6], 
			      A[7], A[8], A[9], A[10], A[11], A[12], A[13], A[14], 
			      S[3], S[2], S[1], S[0]);
endmodule // barrel_shifter_16


module multiplexer_16_4(X, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, S3, S2, S1, S0);
   parameter WIDTH=16;     // How many bits wide are the lines

   output [WIDTH-1:0] X;   // The output line

   input [WIDTH-1:0]  A15;  // Input line with id 4'b1111
   input [WIDTH-1:0]  A14;  // Input line with id 4'b1110
   input [WIDTH-1:0]  A13;  // Input line with id 4'b1101
   input [WIDTH-1:0]  A12;  // Input line with id 4'b1100
   input [WIDTH-1:0]  A11;  // Input line with id 4'b1011
   input [WIDTH-1:0]  A10;  // Input line with id 4'b1010
   input [WIDTH-1:0]  A9;   // Input line with id 4'b1001
   input [WIDTH-1:0]  A8;   // Input line with id 4'b1000
   input [WIDTH-1:0]  A7;   // Input line with id 4'b0111
   input [WIDTH-1:0]  A6;   // Input line with id 4'b0110
   input [WIDTH-1:0]  A5;   // Input line with id 4'b0101
   input [WIDTH-1:0]  A4;   // Input line with id 4'b0100
   input [WIDTH-1:0]  A3;   // Input line with id 4'b0011
   input [WIDTH-1:0]  A2;   // Input line with id 4'b0010
   input [WIDTH-1:0]  A1;   // Input line with id 4'b0001
   input [WIDTH-1:0]  A0;   // Input line with id 4'b0000
   input 	      S3;   // Most significant selection bit
   input 	      S2;   
   input 	      S1;   
   input 	      S0;   // Least significant selection bit
   
   assign X = (S3 == 0 
	       ? (S2 == 0 
		  ? (S1 == 0 
		     ? (S0 == 0 
			? A0       // {S3,S2,S1,S0} = 4'b0000
			: A1)      // {S3,S2,S1,S0} = 4'b0001
		     : (S0 == 0 
			? A2       // {S3,S2,S1,S0} = 4'b0010
			: A3))     // {S3,S2,S1,S0} = 4'b0011
		  : (S1 == 0 
		     ? (S0 == 0 
			? A4       // {S3,S2,S1,S0} = 4'b0100
			: A5)      // {S3,S2,S1,S0} = 4'b0101
		     : (S0 == 0 
			? A6       // {S3,S2,S1,S0} = 4'b0110
			: A7)))    // {S3,S2,S1,S0} = 4'b0111
	       : (S2 == 0 
		  ? (S1 == 0 
		     ? (S0 == 0 
			? A8       // {S3,S2,S1,S0} = 4'b1000
			: A9)      // {S3,S2,S1,S0} = 4'b1001
		     : (S0 == 0 
			? A10      // {S3,S2,S1,S0} = 4'b1010
			: A11))    // {S3,S2,S1,S0} = 4'b1011
		  : (S1 == 0 
		     ? (S0 == 0 
			? A12      // {S3,S2,S1,S0} = 4'b1100
			: A13)     // {S3,S2,S1,S0} = 4'b1101
		     : (S0 == 0 
			? A14      // {S3,S2,S1,S0} = 4'b1110
			: A15)))); // {S3,S2,S1,S0} = 4'b1111
endmodule // multiplexer_16_4

