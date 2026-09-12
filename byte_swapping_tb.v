module byte_swapping_tb;

reg  [31:0] data_in;
wire [31:0] data_out;

byte_swapping uut (
    .data_in(data_in),
    .data_out(data_out)
);

initial begin

    data_in = 32'hAABBCCDD;
    #10;

    data_in = 32'h11223344;
    #10;

    data_in = 32'h12345678;
    #10;

    data_in = 32'hDEADBEEF;
    #10;

end

endmodule