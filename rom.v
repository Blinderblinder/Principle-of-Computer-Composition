//指令存储�?
//2019.02.19
//李硕�?
module Rom(A, D);
input [9:0] A;
output [31:0] D;

reg [31:0] rom[0:2**10-1];

initial begin
$readmemh("C:/Users/45482/Desktop/benchmark_final.hex", rom);//绝对路径，用/斜杠
end

assign D = rom[A];

endmodule