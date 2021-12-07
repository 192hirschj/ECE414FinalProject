`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:02:11 12/07/2021
// Design Name:   programCounter
// Module Name:   C:/Users/Jing Ma/FinalProjectECE414/tb_programCounter.v
// Project Name:  FinalProjectECE414
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: programCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_programCounter;

	// Inputs
	reg [5:0] A;
	reg [3:0] SA;
	reg [3:0] SB;
	reg [1:0] PS;
	reg clk_main;
	reg reset;

	// Outputs
	wire [5:0] PC;

	// Instantiate the Unit Under Test (UUT)
	program_counter uut (
		.A(A), 
		.SA(SA), 
		.SB(SB), 
		.PS(PS), 
		.clk_main(clk_main), 
		.reset(reset), 
		.PC(PC)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		SA = 0;
		SB = 0;
		clk_main = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		clk_main = 1;
		#100;
		
		// Add stimulus here
		clk_main = 0;
		reset = 0;
		PS = 00;
		#100;
		
		clk_main = 1;
		#100;
		
		clk_main = 0;
		PS = 01;
		#100;
		
		clk_main = 1;
		#100;
		
		clk_main = 0;
		PS = 10;
		#100;
		
		clk_main = 1;
		#100;

		clk_main = 0;
		PS = 11;
		#100;
		
		clk_main = 1;
		#100;
	end
      
endmodule

