
module demux_tb;
  reg [1:0]sel; 
  reg [7:0]i;
  wire [7:0]y[0:3];
 
  demux_1_4_using_1_2 demux(sel, i, y);
  
  initial i=8'b10101010;
  
 initial begin
   integer g;
   for(g=0;g<4;g=g+1) begin
     sel=g;
     #1;
   end 
   $stop;
 end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
