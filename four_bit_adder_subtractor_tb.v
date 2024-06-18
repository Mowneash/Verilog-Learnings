module four_bit_adder_subtractor_tb;
 wire [3:0] S, Cout;
 reg [3:0] A, B;
 reg ctrl;
 
  four_bit_adder_subtractor uut(A, B, ctrl, S, Cout);
 
 initial begin
 $monitor("CTRL=%b: A = %b, B = %b --> S = %b, Cout[3] = %b", ctrl, A, B,
S, Cout[3]);
 ctrl = 0;
 A = 1; B = 0;
 #3 A = 2; B = 4;
 #3 A = 4'hb; B = 4'h6;
 #3 A = 5; B = 3;
 ctrl = 1;
 A = 1; B = 0;
 #3 A = 2; B = 4;
 #3 A = 4'hb; B = 4'h6;
 #3 A = 5; B = 3;
 #3 $finish;
 end
 
 initial begin
   $dumpfile("design.vcd");
 $dumpvars;
 end
endmodule
