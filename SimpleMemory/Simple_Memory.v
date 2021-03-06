// File: Simple_Memory.v
// Generated by MyHDL 0.11
// Date: Sun Feb  7 18:24:05 2021


`timescale 1ns/10ps

module Simple_Memory (
    clk,
    rst,
    en,
    addr,
    din,
    dout
);
// A simple memory made of 32 8-bit registers.
// :param clk: Clock signal
// :param rst: Reset signal
// :param en: Write enable signal
// :param addr: Address to write or read from
// :param din: Data input
// :param dout: Data output

input clk;
input rst;
input en;
input [4:0] addr;
input [7:0] din;
output [7:0] dout;
reg [7:0] dout;

reg [7:0] regs [0:32-1];



always @(posedge clk, negedge rst) begin: SIMPLE_MEMORY_WRITE
    if (rst == 0) begin
        regs[0] <= 0;
        regs[1] <= 0;
        regs[2] <= 0;
        regs[3] <= 0;
        regs[4] <= 0;
        regs[5] <= 0;
        regs[6] <= 0;
        regs[7] <= 0;
        regs[8] <= 0;
        regs[9] <= 0;
        regs[10] <= 0;
        regs[11] <= 0;
        regs[12] <= 0;
        regs[13] <= 0;
        regs[14] <= 0;
        regs[15] <= 0;
        regs[16] <= 0;
        regs[17] <= 0;
        regs[18] <= 0;
        regs[19] <= 0;
        regs[20] <= 0;
        regs[21] <= 0;
        regs[22] <= 0;
        regs[23] <= 0;
        regs[24] <= 0;
        regs[25] <= 0;
        regs[26] <= 0;
        regs[27] <= 0;
        regs[28] <= 0;
        regs[29] <= 0;
        regs[30] <= 0;
        regs[31] <= 0;
    end
    else begin
        if (en) begin
            regs[addr] <= din;
        end
    end
end


always @(addr, regs[0], regs[1], regs[2], regs[3], regs[4], regs[5], regs[6], regs[7], regs[8], regs[9], regs[10], regs[11], regs[12], regs[13], regs[14], regs[15], regs[16], regs[17], regs[18], regs[19], regs[20], regs[21], regs[22], regs[23], regs[24], regs[25], regs[26], regs[27], regs[28], regs[29], regs[30], regs[31], rst) begin: SIMPLE_MEMORY_READ
    if ((rst == 0)) begin
        dout = 0;
    end
    else begin
        dout = regs[addr];
    end
end

endmodule
