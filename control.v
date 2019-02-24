//硬布线控制器
//合并后的控制器要将扩展的信号添加�?24条指令的生成信号�?
//2019.02.20

//硬布线控制器�?24条基�?指令+4条扩展指令）
module controller(OP_CODE, FUNC, ALU_OP, MemToReg, MemWrite, ALU_SRC, RegWrite, SysCALL, SignedExt, RegDst, Beq, Bne, JR, JMP, JAL, LUI, BLTZ, SB);
input   [5:0] OP_CODE, FUNC;
output  reg [3:0] ALU_OP;
output  reg MemToReg, MemWrite, ALU_SRC, RegWrite, SysCALL, SignedExt, RegDst, Beq, Bne, JR, JMP, JAL;
output  reg LUI, BLTZ, SB;//自定义信�?
always@(*) begin
    case(OP_CODE)
        6'b000000:        //R型指�?  
        begin
            case(FUNC)
                6'b000000:// no.1   SLL     0
                begin
                    ALU_OP <= 0;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 1;
                    SysCALL <= 0;
                    SignedExt <= 0;
                    RegDst <= 1;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 0;
                    JMP <= 0;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                end
                6'b000011:// no.2   SRA     3
                begin
                    ALU_OP <= 1;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 1;
                    SysCALL <= 0;
                    SignedExt <= 0;
                    RegDst <= 1;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 0;
                    JMP <= 0;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                end
                6'b000010:// no.3   SRL     2
                begin
                    ALU_OP <= 2;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 1;
                    SysCALL <= 0;
                    SignedExt <= 0;
                    RegDst <= 1;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 0;
                    JMP <= 0;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                end
                6'b100000:// no.4   ADD     32
                begin
                    ALU_OP <= 5;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 1;
                    SysCALL <= 0;
                    SignedExt <= 0;
                    RegDst <= 1;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 0;
                    JMP <= 0;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                end
                6'b100001:// no.5   ADDU    33
                begin
                    ALU_OP <= 5;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 1;
                    SysCALL <= 0;
                    SignedExt <= 0;
                    RegDst <= 1;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 0;
                    JMP <= 0;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                end
                6'b100010:// no.6   SUB     34
                begin
                    ALU_OP <= 6;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 1;
                    SysCALL <= 0;
                    SignedExt <= 0;
                    RegDst <= 1;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 0;
                    JMP <= 0;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                end
                6'b100011:// no.25   SUBU    35
                begin
                    ALU_OP <= 6;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 1;
                    SysCALL <= 0;
                    SignedExt <= 0;
                    RegDst <= 1;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 0;
                    JMP <= 0;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                end
                6'b100100:// no.7   AND     36
                begin
                    ALU_OP <= 7;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 1;
                    SysCALL <= 0;
                    SignedExt <= 0;
                    RegDst <= 1;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 0;
                    JMP <= 0;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                end
                6'b100101:// no.8   OR      37
                begin
                    ALU_OP <= 8;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 1;
                    SysCALL <= 0;
                    SignedExt <= 0;
                    RegDst <= 1;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 0;
                    JMP <= 0;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                end
                6'b100111:// no.9   NOR     39
                begin
                    ALU_OP <= 10;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 1;
                    SysCALL <= 0;
                    SignedExt <= 0;
                    RegDst <= 1;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 0;
                    JMP <= 0;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                end
                6'b101010:// no.10  SLT     42
                begin
                    ALU_OP <= 11;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 1;
                    SysCALL <= 0;
                    SignedExt <= 0;
                    RegDst <= 1;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 0;
                    JMP <= 0;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                end
                6'b101011:// no.11  SLTU    43
                begin
                    ALU_OP <= 12;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 1;
                    SysCALL <= 0;
                    SignedExt <= 0;
                    RegDst <= 1;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 0;
                    JMP <= 0;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                end
                6'b001000:// no.12  JR      8
                begin
                    ALU_OP <= 0;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 0;
                    SysCALL <= 0;
                    SignedExt <= 0;
                    RegDst <= 0;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 1;
                    JMP <= 1;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                end
                6'b001100:// no.13  SYSCALL 12
                begin
                    ALU_OP <= 0;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 0;
                    SysCALL <= 1;
                    SignedExt <= 0;
                    RegDst <= 0;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 0;
                    JMP <= 0;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                end
                default: begin
                    ALU_OP <= 0;
                    MemToReg <= 0;
                    MemWrite <= 0;
                    ALU_SRC <= 0;
                    RegWrite <= 0;
                    SysCALL <= 0;
                    SignedExt <= 0;
                    RegDst <= 0;
                    Beq <= 0;
                    Bne <= 0;
                    JR <= 0;
                    JMP <= 0;
                    JAL <= 0;
                    LUI <= 0;
                    BLTZ <= 0;
                    SB <= 0;
                 end
            endcase
        end
        6'b000010:  // no.14    J       2
        begin
            ALU_OP <= 0;
            MemToReg <= 0;
            MemWrite <= 0;
            ALU_SRC <= 0;
            RegWrite <= 0;
            SysCALL <= 0;
            SignedExt <= 0;
            RegDst <= 0;
            Beq <= 0;
            Bne <= 0;
            JR <= 0;
            JMP <= 1;
            JAL <= 0;
            LUI <= 0;
            BLTZ <= 0;
            SB <= 0;
        end
		6'b000011:  // no.15    JAL     3
        begin
            ALU_OP <= 0;
            MemToReg <= 0;
            MemWrite <= 0;
            ALU_SRC <= 0;
            RegWrite <= 1;
            SysCALL <= 0;
            SignedExt <= 0;
            RegDst <= 0;
            Beq <= 0;
            Bne <= 0;
            JR <= 0;
            JMP <= 1;
            JAL <= 1;
            LUI <= 0;
            BLTZ <= 0;
            SB <= 0;
        end
		6'b000100:  // no.16    BEQ     4
        begin
            ALU_OP <= 0;
            MemToReg <= 0;
            MemWrite <= 0;
            ALU_SRC <= 0;
            RegWrite <= 0;
            SysCALL <= 0;
            SignedExt <= 0;
            RegDst <= 0;
            Beq <= 1;
            Bne <= 0;
            JR <= 0;
            JMP <= 0;
            JAL <= 0;
            LUI <= 0;
            BLTZ <= 0;
            SB <= 0;
        end
		6'b000101:  // no.17    BNE     5
        begin
            ALU_OP <= 0;
            MemToReg <= 0;
            MemWrite <= 0;
            ALU_SRC <= 0;
            RegWrite <= 0;
            SysCALL <= 0;
            SignedExt <= 0;
            RegDst <= 0;
            Beq <= 0;
            Bne <= 1;
            JR <= 0;
            JMP <= 0;
            JAL <= 0;
            LUI <= 0;
            BLTZ <= 0;
            SB <= 0;
        end
		6'b001000:  // no.18    ADDI    8
        begin
            ALU_OP <= 5;
            MemToReg <= 0;
            MemWrite <= 0;
            ALU_SRC <= 1;
            RegWrite <= 1;
            SysCALL <= 0;
            SignedExt <= 1;
            RegDst <= 0;
            Beq <= 0;
            Bne <= 0;
            JR <= 0;
            JMP <= 0;
            JAL <= 0;
            LUI <= 0;
            BLTZ <= 0;
            SB <= 0;
        end
		6'b001100:  // no.19    ANDI    12
        begin
            ALU_OP <= 7;
            MemToReg <= 0;
            MemWrite <= 0;
            ALU_SRC <= 1;
            RegWrite <= 1;
            SysCALL <= 0;
            SignedExt <= 0;
            RegDst <= 0;
            Beq <= 0;
            Bne <= 0;
            JR <= 0;
            JMP <= 0;
            JAL <= 0;
            LUI <= 0;
            BLTZ <= 0;
            SB <= 0;
        end
		6'b001001:  // no.20    ADDIU   9
        begin
            ALU_OP <= 5;
            MemToReg <= 0;
            MemWrite <= 0;
            ALU_SRC <= 1;
            RegWrite <= 1;
            SysCALL <= 0;
            SignedExt <= 1;
            RegDst <= 0;
            Beq <= 0;
            Bne <= 0;
            JR <= 0;
            JMP <= 0;
            JAL <= 0;
            LUI <= 0;
            BLTZ <= 0;
            SB <= 0;
        end
		6'b001010:  // no.21    SLTI    10
        begin
            ALU_OP <= 11;
            MemToReg <= 0;
            MemWrite <= 0;
            ALU_SRC <= 1;
            RegWrite <= 1;
            SysCALL <= 0;
            SignedExt <= 1;
            RegDst <= 0;
            Beq <= 0;
            Bne <= 0;
            JR <= 0;
            JMP <= 0;
            JAL <= 0;
            LUI <= 0;
            BLTZ <= 0;
            SB <= 0;
        end
		6'b001101:  // no.22    ORI     13
        begin
            ALU_OP <= 8;
            MemToReg <= 0;
            MemWrite <= 0;
            ALU_SRC <= 1;
            RegWrite <= 1;
            SysCALL <= 0;
            SignedExt <= 0;
            RegDst <= 0;
            Beq <= 0;
            Bne <= 0;
            JR <= 0;
            JMP <= 0;
            JAL <= 0;
            LUI <= 0;
            BLTZ <= 0;
            SB <= 0;
        end      
        6'b100011:  // no.23    LW      35
        begin
            ALU_OP <= 5;
            MemToReg <= 1;
            MemWrite <= 0;
            ALU_SRC <= 1;
            RegWrite <= 1;
            SysCALL <= 0;
            SignedExt <= 1;
            RegDst <= 0;
            Beq <= 0;
            Bne <= 0;
            JR <= 0;
            JMP <= 0;
            JAL <= 0;
            LUI <= 0;
            BLTZ <= 0;
            SB <= 0;
        end
		6'b101011:  // no.24    SW      43
        begin
            ALU_OP <= 5;
            MemToReg <= 0;
            MemWrite <= 1;
            ALU_SRC <= 1;
            RegWrite <= 0;
            SysCALL <= 0;
            SignedExt <= 1;
            RegDst <= 0;
            Beq <= 0;
            Bne <= 0;
            JR <= 0;
            JMP <= 0;
            JAL <= 0;
            LUI <= 0;
            BLTZ <= 0;
            SB <= 0;
        end
        6'b001111:  // no.26    LUI   15
        begin
            ALU_OP <= 0;
            MemToReg <= 0;
            MemWrite <= 0;
            ALU_SRC <= 0;
            RegWrite <= 1;
            SysCALL <= 0;
            SignedExt <= 0;
            RegDst <= 0;
            Beq <= 0;
            Bne <= 0;
            JR <= 0;
            JMP <= 0;
            JAL <= 0;
            LUI <= 1;
            BLTZ <= 0;
            SB <= 0;
        end
        6'b000001: // no.27     BLTZ  1
        begin
            ALU_OP <= 0;
            MemToReg <= 0;
            MemWrite <= 0;
            ALU_SRC <= 0;
            RegWrite <= 0;
            SysCALL <= 0;
            SignedExt <= 0;
            RegDst <= 0;
            Beq <= 0;
            Bne <= 0;
            JR <= 0;
            JMP <= 0;
            JAL <= 0;
            LUI <= 0;
            BLTZ <= 1;
            SB <= 0;
        end
        6'b101000: // no.27     SB  40
        begin
            ALU_OP <= 5;
            MemToReg <= 0;
            MemWrite <= 1;
            ALU_SRC <= 1;
            RegWrite <= 0;
            SysCALL <= 0;
            SignedExt <= 1;
            RegDst <= 0;
            Beq <= 0;
            Bne <= 0;
            JR <= 0;
            JMP <= 0;
            JAL <= 0;
            LUI <= 0;
            BLTZ <= 0;
            SB <= 1;
        end
        default: begin
            ALU_OP <= 0;
            MemToReg <= 0;
            MemWrite <= 0;
            ALU_SRC <= 0;
            RegWrite <= 0;
            SysCALL <= 0;
            SignedExt <= 0;
            RegDst <= 0;
            Beq <= 0;
            Bne <= 0;
            JR <= 0;
            JMP <= 0;
            JAL <= 0;
            LUI <= 0;
            BLTZ <= 0;
            SB <= 0;
          end
    endcase
end
endmodule