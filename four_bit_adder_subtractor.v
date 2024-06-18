module full_adder(
  input a,b,cin,
  output s,co);
  assign {s,co}={a^b^cin, (a^b)&cin|(a&b)};
endmodule
  
module four_bit_adder_subtractor #(parameter size=4)(
  input [size-1:0]a,b,
  input control,
  output [size-1:0]s,cout);
  reg [size-1:0]bc;
  
  genvar i;
  
  assign bc[0]=b[0]^control;
  full_adder(a[0],bc[0],control,s[0],cout[0]);
  generate 
    for(i=1;i<size;i=i+1) begin
      assign bc[i]=b[i]^control;
      full_adder(a[i],bc[i],cout[i-1],s[i],cout[i]);
    end
  endgenerate
endmodule
      
