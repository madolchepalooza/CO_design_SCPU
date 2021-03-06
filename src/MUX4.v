module MUX4(
    input [31:0] source0,
    input [31:0] source1,
    input [31:0] source2,
    input [31:0] source3,
    input [1:0] addr,
    output [31:0] sltd
);
    assign sltd = (addr == 2'b11) ? (source3) : 
                 ((addr == 2'b10) ? (source2) : 
                 ((addr == 2'b01) ? (source1) : 
                                    (source0)));

endmodule // MUX4