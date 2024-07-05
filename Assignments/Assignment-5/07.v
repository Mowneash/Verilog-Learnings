//7. Write Verilog code for generating an infinite clock signal with a 50% Duty cycle having a time period of 10ns using a forever loop.`timescale 1us/1ps
module timescale();
reg clk;
initial begin 
clk=0;
forever #0.005 clk=~clk;
#1$finish;
end
endmodule
  
