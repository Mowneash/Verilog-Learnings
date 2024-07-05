//9. Write RTL code for designing a D latch using a 2:1 mux.
module d_latch(
  input en,d,
  output reg y);
  always @ (en,d) begin
    if(en)
      y<=d;
    else
      y<=y;
  end
endmodule


//Method 2
module d_latch(
  input en,d,
  output reg y);
  assign y=en?d:y;
endmodule
