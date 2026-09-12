`timescale 1ns/1ps

module concat_replication (
    input  wire [3:0] a,
    input  wire [3:0] b,
    output wire [7:0] concat_out,
    output wire [7:0] replicate_out
);

assign concat_out = {a, b};
assign replicate_out = {2{a}};

endmodule