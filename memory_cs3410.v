//带片选信号的数据存储器CS3410_MIPS_RAM
//10位地址
//2019.02.19
//修改自李硕朋-memory

module CS3410_MIPS_RAM(A, Din ,str , sel, CLK, Dout);
input [9:0] A;//input address
input [31:0] Din;//input data
input str,CLK;//MemWrite CLK
input [3:0] sel;//四位片选信号，其值根据ALU计算出的结果R[0..1]进行片选判断
				//当 sel=0001 时，D 端口的 0~7 位被选中，当 sel =
				//0010, D 端口的 8~15 位被选中，当 sel = 0100 时, D 端口 16~23 位被选中，当 Sel=1000
				//时，D 端口 24~31 位被选中。另外 SEL=0011，表示 0~15 位被选中，SEL=1100，表
				//示 16~31 位被选中，SEL=1111 时，4 个字节同时被选中。
output [31:0] Dout;//output data

reg [31:0] mem[0:2**10-1];
assign Dout = mem[A];



always@(posedge CLK)
begin
    if(str==1)
	begin
		if(sel[0]==1)
			mem[A][7:0]=Din[7:0];
		if(sel[1]==1)
			mem[A][15:8]=Din[15:8];
		if(sel[2]==1)
			mem[A][23:16]=Din[23:16];	
		if(sel[3]==1)
			mem[A][31:24]=Din[31:24];
	end
	else
	mem[A]=mem[A];
end
endmodule