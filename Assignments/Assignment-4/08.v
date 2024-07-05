//8. Write Verilog code in order to generate a clock signal of frequency 1Ghz. Use the following timescale: `timescale 1us/1ps
`timescale 1us/1ps
module timescale();
reg clk;
initial begin 
clk=0;
forever #0.0005 clk=~clk;
#1$finish;
end
endmodule
  
