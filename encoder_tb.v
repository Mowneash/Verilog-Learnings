module encoder_tb;
  reg [3:0]a;
  wire [1:0]y;
  
  encoder uut(a,y);
  
  initial begin
    a='b1000;
    #10;a='b100;
    #10;a='b10;
    #10;a='b1;
    #10;
    $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
  initial $monitor("%b",y);
endmodule
  
