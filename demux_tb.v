
module demux_tb;
  reg sel; 
  reg [7:0]i;
  wire [7:0]y0, y1;
 
 demux_2_1 demux(sel, i, y0, y1);
 initial begin
 sel=0; i=0; #1;
 sel=0; i=15; #1;
 sel=1; i=0; #1;
 sel=1; i=19; #1;
   $stop;
 end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
