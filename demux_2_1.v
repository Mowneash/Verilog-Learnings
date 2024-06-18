module demux_2_1(
 input sel,
  input [7:0]i,
  output [7:0]y0, y1);
 
  assign {y0,y1} = sel?{8'b0,i}: {i,8'b0};
endmodule
