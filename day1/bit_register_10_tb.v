`timescale 1ns / 1ps

module bit_register_tb;

    // Testbench signals
    reg clk;
    reg reset;
    reg load;
    reg [9:0] data_in;
    wire [9:0] a;

    // Instantiate the register_10bit module
     register_10bit uut (
        .clk(clk),
        .reset(reset),
        .load(load),
        .data_in(data_in),
        .a(a)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns period clock
    end

    // Test sequence
    initial begin
        // Initialize signals
        reset = 1;
        load = 0;
        data_in = 10'b0;
        
        // Apply reset
        #10;
        reset = 0;
        
        // Load a value into the register
        #10;
        load = 1;
        data_in = 10'b1010101010;
        #10;
        data_in = 10'b1111111;
      #100;

        $stop;  // End of simulation
    end
  initial begin
    $dumpfile("design.vcd"); $dumpvars(1,bit_register_tb); end
endmodule
