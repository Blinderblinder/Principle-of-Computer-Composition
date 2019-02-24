`timescale 1ns / 1ps
module pc_reg
#(parameter N=32)
(clk,rst,ena,data_in,data_out);
    input clk;
    input rst;
    input ena;
    input [N-1:0] data_in;
    output [N-1:0] data_out;
    reg [N-1:0] data=0;

    always @(posedge clk) begin
        if(rst) data<=0;        //reset key=32'h00400000;?
        else begin
            if(ena) data<=data_in;        //enable ,input 
        end
    end
    assign data_out = data;
endmodule
