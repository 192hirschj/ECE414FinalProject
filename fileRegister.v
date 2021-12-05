`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:01 11/22/2021 
// Design Name: 
// Module Name:    fileReg 
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
module fileReg(
	input [15:0] D,
	input [3:0] DA, 
	input [3:0] AA,
	input [3:0] BA, //DA(Destination Address) AA(address to read operand A) BA(address to read operand B)
	input RW,
	input clk,
	input clr,
	output reg [15:0] A, 
	output reg [15:0] B
    );
	 
	 reg [15:0] register0,
	 register1, 
	 register2, 
	 register3,
	 register4,
	 register5,
	 register6,
	 register7,
	 register8,
	 register9,
	 register10,
	 register11,
	 register12,
	 register13,
	 register14,
	 register15;
	 
	 always @(posedge clk) begin
		//reset all registers to zero
		if(clr) begin
			register0 <= 1'b0;
			register1 <= 1'b0;
			register2 <= 1'b0;
			register3 <= 1'b0;
			register4 <= 1'b0;
			register5 <= 1'b0;
			register6 <= 1'b0;
			register7 <= 1'b0;
			register8 <= 1'b0;
			register9 <= 1'b0;
			register10 <= 1'b0;
			register11 <= 1'b0;
			register12 <= 1'b0;
			register13 <= 1'b0;
			register14 <= 1'b0;
			register15 <= 1'b0;
		end
		//load each register according DA
		else if(RW) begin
			if(DA==0)
				register0 <= D;
			if(DA==1)
				register1 <= D;
			if(DA==2)
				register2 <= D;
			if(DA==3)
				register3 <= D;
			if(DA==4)
				register4 <= D;
			if(DA==5)
				register5 <= D;
			if(DA==6)
				register6 <= D;
			if(DA==7)
				register7 <= D;
			if(DA==8)
				register8 <= D;
			if(DA==9)
				register9 <= D;
			if(DA==10)
				register10 <= D;
			if(DA==11)
				register11 <= D;
			if(DA==12)
				register12 <= D;
			if(DA==13)
				register13 <= D;
			if(DA==14)
				register14 <= D;
			if(DA==15)
				register15 <= D;
		end
	end
	
	//set A and B to contents of chosen registers if anything changed
	//AA and BA will be the select
	always @(AA, BA, register0, register1, register2, register3, register4, register5, register6, register7, register8,
				register9, register10, register11, register12, register13, register14, register15) begin
				//used two 16 to 1 MUXs
				case(AA)
					4'b0000 : A <= register0;
					4'b0001 : A <= register1;
					4'b0010 : A <= register2;
					4'b0011 : A <= register3;
					4'b0100 : A <= register4;
					4'b0101 : A <= register5;
					4'b0110 : A <= register6;
					4'b0111 : A <= register7;
					4'b1000 : A <= register8;
					4'b1001 : A <= register9;
					4'b1010 : A <= register10;
					4'b1011 : A <= register11;
					4'b1100 : A <= register12;
					4'b1101 : A <= register13;
					4'b1110 : A <= register14;
					4'b1111 : A <= register15;
				endcase
				
				case(BA)
					4'b0000 : B <= register0;
					4'b0001 : B <= register1;
					4'b0010 : B <= register2;
					4'b0011 : B <= register3;
					4'b0100 : B <= register4;
					4'b0101 : B <= register5;
					4'b0110 : B <= register6;
					4'b0111 : B <= register7;
					4'b1000 : B <= register8;
					4'b1001 : B <= register9;
					4'b1010 : B <= register10;
					4'b1011 : B <= register11;
					4'b1100 : B <= register12;
					4'b1101 : B <= register13;
					4'b1110 : B <= register14;
					4'b1111 : B <= register15;
				endcase
	end


endmodule
