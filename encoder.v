module encoder(
  input [3:0]a,
  output reg [1:0]y);
  
  always @(*)
    case(a)
      4'b1000 :y=0;
      4'b0100 :y=1;
      4'b0010 :y=2;
      4'b0001 :y=3;
      default : y='x;
    endcase
endmodule
      
