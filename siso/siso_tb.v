module siso_tb;
reg sin,clk,rst;
wire sout;

siso uut(
.sin(sin),
.clk(clk),
.rst(rst),
.sout(sout)
);

initial begin
clk=0;
forever #5 clk= ~clk;
end

initial begin
 $monitor($time," rst=%b | sin=%b | sout=%b",rst,sin,sout);

rst=1;sin=0;
#10 rst=0;

sin=1'b1;
#10 sin=1'b1;
#10 sin=1'b0;
#10 sin=1'b1;
#10 sin=1'b0;
#15 $finish;
end
endmodule
