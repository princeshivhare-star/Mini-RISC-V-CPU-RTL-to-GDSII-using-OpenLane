module cpu(
    input clk,
    input reset,
    output [31:0] out   // ✅ ADDED OUTPUT
);

// PC
wire [31:0] pc_out;
pc pc_inst(.clk(clk), .reset(reset), .pc_out(pc_out));

// Instruction Memory
wire [31:0] instr;
imem imem_inst(.addr(pc_out), .instr(instr));

// Extract fields
wire [6:0] opcode = instr[6:0];
wire [4:0] rd = instr[11:7];
wire [2:0] funct3 = instr[14:12];
wire [4:0] rs1 = instr[19:15];
wire [4:0] rs2 = instr[24:20];

// Control Unit
wire reg_write, alu_src;
wire [1:0] alu_op;

control ctrl(
    .opcode(opcode),
    .reg_write(reg_write),
    .alu_src(alu_src),
    .alu_op(alu_op)
);

// Register File
wire [31:0] rd1, rd2;
wire [31:0] alu_result;

regfile rf(
    .clk(clk),
    .we(reg_write),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .wd(alu_result),
    .rd1(rd1),
    .rd2(rd2)
);

// ALU input selection
wire [31:0] alu_in2;
assign alu_in2 = (alu_src) ? instr[31:20] : rd2;

// ALU
alu alu_inst(
    .a(rd1),
    .b(alu_in2),
    .sel(alu_op),
    .y(alu_result)
);

// ✅ VERY IMPORTANT: CONNECT OUTPUT
assign out = alu_result;

// ✅ DUMMY LOGIC (prevents optimization)
wire dummy;
assign dummy = clk ^ reset;

endmodule
