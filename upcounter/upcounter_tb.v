module upcounter_tb;
reg clk,en,rst;
wire [3:0] q;

upcounter uut(
.clk(clk),
.rst(rst),
.en(en),
.q(q)
);

initial begin
clk=0;
forever #5 clk= ~clk;
end

initial begin
 $monitor($time," rst=%b | en=%b| q=%b",rst,en,q);
rst=1;en=1;
#10 rst=0;en=1;
#10 en=0;
#10 en=1;
#60 rst=1;
#10 rst=0;
#20 $finish;
end
endmodule
