//7. Write Verilog code for generating an infinite clock signal with a 50% Duty cycle having a time period of 10ns using a forever loop.
`timescale 1ns/1ps
module timescale();
reg clk;
initial begin 
clk=0;
forever #5 clk=~clk;
end
endmodule
  
