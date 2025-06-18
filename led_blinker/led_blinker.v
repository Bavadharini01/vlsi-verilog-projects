module led_blinker (
    input wire clk,
    output reg led
);
    reg [24:0] counter = 0;

    always @(posedge clk) begin
        counter <= counter + 1;
        if(counter == 25000000) begin
            led <= ~led;
            counter <= 0;
        end
    end
endmodule
