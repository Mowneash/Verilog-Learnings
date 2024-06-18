module mux_8X1(
  input [7:0]d[0:7],
  input [2:0]sel,
  output reg [7:0]y);
  
  always @(*)
    y= d[sel];
  
endmodule
  
