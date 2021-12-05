`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:18 12/04/2021 
// Design Name: 
// Module Name:    ISADecoder 
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
module ISADecoder(
    input [15:0] ROMinput,
	 input clk,
	 output [3:0] DA, //Destination Address -RD equiv
	 output [3:0] AA, //Address A				 -Rs equiv
	 output [3:0] BA, //Address B				 -Rt equiv
	 output MB,			//Multiplexer B
	 output [2:0] FS, //Function Select
	 output MD,			//Multiplexer D
	 output RW,			//RW goes into register file
	 output MW,			 //1 to write to Data Memory, 0 otherwise
	 output MM
    );
	 
	 always @ (posedge clk)
		begin
			DA <= ROMInput[11:8];
			AA <= ROMInput[7:4];
			BA <= ROMInput[3:0];
			if (ROMInput[15:12] == 4'b1000) 
				MB <= 1'b1;
			else
				MB <= 1'b0;
			FS <= ROMInput[15:12];
			if (ROMInput[15:12] == 4'b1001 || ROMInput[15:12] == 4'b1010) 
				MD <= 1'b1;
			else
				MD <= 1'b0;
			RW <= 
			MW <= 
			MM <=
		end
	


endmodule
