`timescale 1ns / 1ps

module tb_led_blinker;

    reg clk;
    wire led;

    // Instantiate the DUT (Device Under Test)
    led_blinker uut (
        .clk(clk),
        .led(led)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk;  // 50 MHz clock
    end

    initial begin
        #1000000 $finish; // Stop after 1 ms
    end

endmodule
