module ram(
  input [7:0]data_in, 
  input [7:0]ram_addr,
  input clk, wr,
  output reg [7:0]data_out);
  
  //memory creation
  reg [7:0]mem[0:255];
  
  always @(posedge clk)
    begin
      if(!wr)
        data_out<=mem[ram_addr];
    end
  
  always @ (posedge clk)
    if(wr)
      mem[ram_addr]<=data_in;
  
endmodule
