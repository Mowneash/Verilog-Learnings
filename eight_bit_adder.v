module full_adder(
  input a,b,ci,
  output s,co);
  
  assign s=a^b^ci;
  assign co=(a&b)|(a&ci)|(b&ci);
  
endmodule

module four_bit_adder(
  input [3:0]a,b,
  input ci,
  output [3:0]s,
  output co);
  wire [2:0]car;
  
  full_adder f1(a[0],b[0],ci,s[0],car[0]);
  full_adder f2(a[1],b[1],car[0],s[1],car[1]);
  full_adder f3(a[2],b[2],car[1],s[2],car[2]);
  full_adder f4(a[3],b[3],car[2],s[3],co);
  
endmodule

module eight_bit_adder(
  input [7:0]a,b,
  input ci,
  output [7:0]s,
  output co);
  wire car;
  
  four_bit_adder ff1(a[3:0],b[3:0],ci,s[3:0],car);
  four_bit_adder f21(a[7:4],b[7:4],car,s[7:4],co);
  
endmodule
