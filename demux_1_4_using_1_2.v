module demux_1_2(
 input sel,
  input [7:0]i,
  output [7:0]y0, y1);
 
  assign {y0,y1} = sel?{8'b0,i}: {i,8'b0};
endmodule

module demux_1_4_using_1_2(
  input [1:0]sel,
  input [7:0]i,
  output [7:0]y[0:3]);
  wire [7:0]x1,x2;
  
  demux_1_2 m1(sel[1],i,x1,x2);
  demux_1_2 m2(sel[0],x1,y[0],y[1]);
  demux_1_2 m3(sel[0],x2,y[2],y[3]);
  
endmodule
