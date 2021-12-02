`timescale 1ns / 1ps

module program_counter(
	input [5:0] A,
	input [3:0] SA, SB,
	input [1:0] PS,
	input clk_main, reset,
	output reg [5:0] PC
	);

always @(posedge clk_main)
	begin
		if(reset)
			PC <= 16'b0;
		else begin
			case(PS)
			2'b00: begin PC <= PC; end
			2'b01: begin PC <= PC + 1'b1; end
			2'b10: begin PC <= PC +({SA[1:0], SB})+1'b1; end
			2'b11: begin PC <= A; end
			endcase
		end
	end
						
endmodule