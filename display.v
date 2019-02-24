`timescale 1 ns/1 ns
module display_control(CLK,RST,LedData,select,num);

	input CLK,RST;
	input [31:0] LedData;
	output reg [3:0] num;
    output reg [2:0] select=0;
    

    wire clk_C;

    divider #(1000) d1(CLK,clk_C);
	always@(posedge clk_C)begin
		select=select+1;
	end
    
	always @(LedData,select,RST)
	begin
		if(RST==1)num<=0;
		else 
		begin
            if(select==0)num<=LedData[3:0];
            else if(select==1)num<=LedData[7:4];
            else if(select==2)num<=LedData[11:8];
			else if(select==3)num<=LedData[15:12];
			else if(select==4)num<=LedData[19:16];
			else if(select==5)num<=LedData[23:20];
			else if(select==6)num<=LedData[27:24];
			else if(select==7)num<=LedData[31:28];
			else num<=0;
		end
	end

endmodule
