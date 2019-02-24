//寄存器文件
//2019.02.19
//蔡灯
`timescale 1ns / 1ps
//寄存器文件模块,上升沿触发
module RegFile(R1_Num,R2_Num,W_Num,Din,WE,Clk,R1_Value,R2_Value);
    input Clk;//时钟信号
    input [4:0]R1_Num,R2_Num;//读寄存器的编号
    input [4:0]W_Num;//写寄存器编号
    input [31:0]Din;//输入数据
    input WE;//寄存器写使能信号
    output [31:0]R1_Value,R2_Value;//所选存器对应的值
    reg [31:0]RegGrp[31:0];//32个32位寄存器组
    initial
        RegGrp[0]<=0; //0号寄存器恒为0
    always @(posedge Clk)
        begin
            if(WE==1&&W_Num!=0)//写使能且写寄存器编号不能为0
               RegGrp[W_Num]<=Din;
        end       
    assign R1_Value=RegGrp[R1_Num];
    assign R2_Value=RegGrp[R2_Num];
endmodule
