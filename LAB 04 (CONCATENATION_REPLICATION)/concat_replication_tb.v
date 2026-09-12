`timescale 1ns/1ps

module concat_replication_tb;

reg [3:0] a;
reg [3:0] b;

wire [7:0] concat_out;
wire [7:0] replicate_out;

concat_replication uut (
    .a(a),
    .b(b),
    .concat_out(concat_out),
    .replicate_out(replicate_out)
);

initial begin

    a = 4'b1010;
    b = 4'b1100;
    #10;

    a = 4'b0011;
    b = 4'b0101;
    #10;

    a = 4'b1111;
    b = 4'b0000;
    #10;

    $finish;

end

endmodule