module imem(
    input [31:0] addr,
    output [31:0] instr
);

reg [31:0] memory [0:255];

// Initialize instructions
initial begin
    memory[0] = 32'h00A00093; // addi x1, x0, 10
    memory[1] = 32'h01400113; // addi x2, x0, 20
    memory[2] = 32'h002081B3; // add x3, x1, x2
end

assign instr = memory[addr[9:2]]; // word aligned

endmodule