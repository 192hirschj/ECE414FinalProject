`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:43 11/30/2021 
// Design Name: 
// Module Name:    ALU_toplevel 
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
module ALU_toplevel(FS, A, B, out, zero_flag);

	parameter nBit = 16;
	
	input [2:0] FS;
	input [nBit-1:0] A, B;
	
	output reg [nBit-1:0] out;
	output reg zero_flag;
	
	wire cout;
	wire [nBit-1:0] arith_out;
	wire op_sel;
	
	assign op_sel = FS[2] | FS[1];
	
	add_sub #(nBit) CE1(.A(A), .B(B), .cond(FS[0]), .out(arith_out), .cout(cout));
	
	always@(*)
	begin
		if(op_sel == 0)
			out <= arith_out;
		else
		begin
			case(FS[1:0])
				2'b10: out <= A & B;
				2'b11: out <= A | B;
				2'b00: out <= A ^ B;
				2'b01: out <= ~A;
			endcase
		end
	end
	
	always@(*)
	begin
		if(out != 0)
			zero_flag <= 1'b0;
		else
		begin
			if(op_sel == 0)
			begin
				if(FS[0] == 1 & cout == 1)
					zero_flag <= 1'b1;
				else if(FS[0] == 0 & cout == 0)
					zero_flag <= 1'b1;
				else
					zero_flag <= 1'b0;
			end
			else
				zero_flag <= 1'b1;
		end
	end
	
endmodule
