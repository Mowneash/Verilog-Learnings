module rtl(
input x1,x2,x3,clk,
  output reg g,f);
  wire w1,w2;
  always @(posedge clk) begin 
    f<=w1;
    g<=w2;
  end
  assign w1=x1&x2;
  assign w2=x3|f;
endmodule
