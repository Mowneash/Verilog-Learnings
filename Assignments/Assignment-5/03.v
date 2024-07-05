module siso(
input d,clk,
output y);
reg [3:0]m;
always@(posedge clk) begin
    m[0]<=d;
    m[1]<=m[0];
    m[2]<=m[1];
    y<=m[2];
    end
endmodule
