module dff_tb;
reg d,clk,rst;
wire q;

dff uut(
.d(d),
.clk(clk),
.rst(rst),
.q(q)
);
initial begin
clk=0;
forever #5 clk=(~clk);
end

initial begin

$monitor($time," rst=%b | d=%b | q=%b", rst,d,q);
rst=1;
#10 rst =0;d=0;
#10 d=1;
#10 d=0;
#10 rst=1;d=1;

#10 $finish;
end 
endmodule


