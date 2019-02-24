`timescale 1ns / 1ps
module pattern(code, patt);
	input [3: 0] code;       // 16进制数字的4位二进制编码
	output reg [7:0] patt;       // 7段数码管驱动，低电平有效

	always @ (code)
		begin
			case(code)
			4'b0000 :patt=8'b11000000;//0
			4'b0001 :patt=8'b11111001;//1
			4'b0010 :patt=8'b10100100;//2
			4'b0011 :patt=8'b10110000;//3
			4'b0100 :patt=8'b10011001;//4
			4'b0101 :patt=8'b10010010;//5
			4'b0110 :patt=8'b10000010;//6
			4'b0111 :patt=8'b11111000;//7
			4'b1000 :patt=8'b10000000;//8
			4'b1001 :patt=8'b10011000;//9
			4'b1010 :patt=8'b10001000;//A
			4'b1011 :patt=8'b10000011;//B
			4'b1100 :patt=8'b11000110;//C
			4'b1101 :patt=8'b10100001;//D
			4'b1110 :patt=8'b10000110;//E
			4'b1111 :patt=8'b10001110;//F
			endcase
		end
endmodule