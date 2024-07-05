//Find the bug if any in the following File write operation snippet.

module test ;
reg [5:0]channel ;
reg a ;
initial
begin
channel = $fopen(“file1.txt”);
$monitor(channel,”a=%b”,a);
end
endmodule

Answer : a is unknown 

