`timescale 1ns/1ps

module tri_state_buffer_tb;

    reg A;
    reg Enable;
    wire Y;

    tri_state_buffer DUT (
        .A(A),
        .Enable(Enable),
        .Y(Y)
    );

    initial begin

        $monitor("Time=%0t | A=%b | Enable=%b | Y=%b",
                 $time, A, Enable, Y);

        // Test 1: Buffer enabled, A = 0
        A = 1'b0;
        Enable = 1'b1;
        #10;

        // Test 2: Buffer enabled, A = 1
        A = 1'b1;
        Enable = 1'b1;
        #10;

        // Test 3: Buffer disabled
        A = 1'b0;
        Enable = 1'b0;
        #10;

        // Test 4: Buffer disabled
        A = 1'b1;
        Enable = 1'b0;
        #10;

        // Test 5: Buffer enabled again
        A = 1'b1;
        Enable = 1'b1;
        #10;

        $finish;
    end

endmodule