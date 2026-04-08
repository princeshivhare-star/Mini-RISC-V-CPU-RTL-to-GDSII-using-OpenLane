module control(
    input [6:0] opcode,
    output reg reg_write,
    output reg alu_src,
    output reg [1:0] alu_op
);

always @(*) begin
    case(opcode)

        7'b0010011: begin // ADDI
            reg_write = 1;
            alu_src = 1;
            alu_op = 2'b00;
        end

        7'b0110011: begin // R-type (ADD)
            reg_write = 1;
            alu_src = 0;
            alu_op = 2'b10;
        end

        default: begin
            reg_write = 0;
            alu_src = 0;
            alu_op = 2'b00;
        end

    endcase
end

endmodule