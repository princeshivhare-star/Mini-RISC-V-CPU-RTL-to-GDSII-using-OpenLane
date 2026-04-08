module regfile(
    input clk,
    input we,
    input [4:0] rs1, rs2, rd,
    input [31:0] wd,
    output [31:0] rd1, rd2
);

reg [31:0] regs [31:0];

// Read
assign rd1 = regs[rs1];
assign rd2 = regs[rs2];

// Write
always @(posedge clk) begin
    if (we && rd != 0)
        regs[rd] <= wd;
end

endmodule
