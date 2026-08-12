`timescale 1ns/1ps

module tri_state_buffer (
    input  A,
    input  Enable,
    output Y
);

    assign Y = Enable ? A : 1'bz;

endmodule