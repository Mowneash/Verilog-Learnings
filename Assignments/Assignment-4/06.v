//6. Write Verilog code in order to generate 5 odd random numbers between 1 to 10.


module odd_random_numbers;
    reg [3:0]o[0:4];;
    integer i; 
    initial begin 
    o[0]=1;
    o[1]=3;
    o[2]=5;
    o[3]=7;
    o[4]=9; 
    repeat(5) begin
    i=$urandom%5;  
     $display("%d",o[i]); end end
endmodule
