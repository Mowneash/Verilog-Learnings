module ram_tb;
  
  //inputs
  reg clk,wr;
  reg [7:0]data_in,ram_addr;
  
  //output
  wire [7:0]data_out;
  
  //
  ram uut(.data_in(data_in),
          .ram_addr(ram_addr),
          .data_out(data_out),
          .clk(clk),
          .wr(wr));
  //
  initial clk=0;
  always #5 clk=~clk;
  
  //
  
  integer i;
  initial begin
    wr=1;
    data_in=7;
    ram_addr=10;#6;
    data_in=15;
    ram_addr=24;#10;
    
    wr=0;
    ram_addr=10;
    #10;
    ram_addr=24;
    #10;
    $stop;
  end
  
  
   initial begin
     $dumpfile("ram_tb.vcd");
     $dumpvars;
   end
endmodule
  
  
  
