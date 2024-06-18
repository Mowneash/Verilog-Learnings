// Code your design here
module register_10bit(
    input clk,       // Clock signal
    input reset,     // Asynchronous reset signal
    input load,      // Load enable signal
    input [9:0] data_in,  
    output reg [9:0] a    
);

    always @(posedge clk or posedge reset) begin
        if (reset) 
            a <= 10'b0;  // Reset the register to 0
        else if (load) 
            a <= data_in;  // Load the input data into the register     
    end

endmodule
