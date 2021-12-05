`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:13:24 12/04/2021
// Design Name:   ALU_toplevel
// Module Name:   C:/Users/Karna Nagalla/Desktop/ECE/ECE414/FinalProjectParts/Functional Unit/ALU/tb_ALU_toplevel.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_toplevel
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ALU_toplevel;

	// Inputs
	reg [2:0] FS;
	reg [15:0] A;
	reg [15:0] B;

	// Outputs
	wire [15:0] out;
	wire zero_flag;

	// Instantiate the Unit Under Test (UUT)
	ALU_toplevel uut (
		.FS(FS), 
		.A(A), 
		.B(B), 
		.out(out), 
		.zero_flag(zero_flag)
	);

	initial begin
		// Initialize Inputs
		FS = 0;
		A = 16'b0010100111001011;
		B = 16'b0010100111001011;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		FS = 3'b000;
		#100;
		
		FS = 3'b001;
		#100;
		
		FS = 3'b010;
		#100;
		
		FS = 3'b011;
		#100;
		
		FS = 3'b100;
		#100;
		
		FS = 3'b101;
		#100;

	end
      
endmodule
