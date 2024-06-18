module tb;
  reg [7:0]a,b;
  reg ci;
  wire [7:0]s;
  wire co;
  
  eight_bit_adder uut(.a(a),.b(b),.ci(ci),.s(s),.co(co));
  
  initial begin 
    ci=0;
    a=8'b10101010;
    b=8'b00000000;
    #10;$stop;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
  
