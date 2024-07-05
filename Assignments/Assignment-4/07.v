`define SET 2'b10
`define RESET 2'b01
`define TOGGLE 2'b11
`define HOLD 2'b00

module jk_flipflop(
  input j,k,clk,output reg q);
  always @(posedge clk)
    begin 
      case({j,k})
        `SET :	q<=1;
        `RESET :	q<=0;
        `TOGGLE :	q<=~q;
        `HOLD :	q<=q;
        endcase
        end
endmodule
  
