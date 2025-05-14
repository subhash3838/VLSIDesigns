module sipo_tb;
reg clk,rst,sin;
wire [3:0] pout;

sipo uut(
.clk(clk),
.rst(rst),
.sin(sin),
.pout(pout)
);

initial begin
clk=0;
forever #5 clk= ~clk;
end

initial begin
 $monitor($time," rst=%b | sin=%b | pout=%b",rst,sin,pout);

rst=1;sin=0;
#10 rst=0;
sin=1'b1;
#10 sin=1'b0;
#10 sin=1'b1;
#10 sin=1'b0;
#10 sin=1'b1;
#15 $finish;
end
endmodule
