//输入输出对应于课设alu封装
//使用前仿真测试文件alu_simu.v测试
//2019.02.19

module alu(S,A,B,shamt,R,R2,isEqual);
	  input[3:0] S;
    input[31:0] A,B;
    input [4:0] shamt;
    output isEqual;
    output reg [31:0] R,R2;

    assign isEqual=A==B?1:0;
	  always @(S,A,B,shamt)begin
		case(S) //alu操作码
			4'b0000:begin
              R=B<<shamt;
              R2=0;
            end//0
			4'b0001:begin
              R=$signed(B)>>>shamt;
              R2=0;
            end//1
			4'b0010:begin
              R=B>>shamt;
              R2=0;
            end//2
			4'b0011:begin
              {R2,R}=A*B;
            end//3
			4'b0100:begin
              R=A/B;
              R2=A%B;
            end//4
			4'b0101:begin
              R=A+B;
              R2=0;
            end//5
			4'b0110:begin
              R=A-B;
              R2=0;
            end//6
			4'b0111:begin
              R=A&B;
              R2=0;
            end//7
			4'b1000:begin
              R=A|B;
              R2=0;
            end//8
			4'b1001:begin
              R=A^B;
              R2=0;
            end//9
			4'b1010:begin
              R=~(A|B);
              R2=0;
            end//a
			4'b1011:begin
              R=$signed(A)<$signed(B)?1:0;
              R2=0;
            end//b
			4'b1100:begin
              R=A<B?1:0;
              R2=0;
            end//c
			default:begin
              R=0;
              R2=0;
            end//x
		endcase
	end
endmodule