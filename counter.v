//计数器
module counter(en,clk,rst,out);
    parameter databit=16;
    input en;
    input clk,rst;
    output reg [databit-1:0] out=0;
    
    always@(posedge clk) begin
        if(rst) out=0;
        else if(en&(out!=16'b1111111111111111)) out=out+1;
    end
endmodule
