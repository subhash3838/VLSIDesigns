module downcounter_tb;
reg clk,rst,ld,en;
wire [3:0] q;

downcounter uut(
.clk(clk),
.rst(rst),
.en(en),
.ld(ld),
.q(q)
);

initial begin
clk=0;
forever #5 clk= ~clk;
end

initial begin
 $monitor($time," rst=%b | ld=%b | en=%b | q=%b",rst,ld,en,q);

rst=1;en=0;ld=0;
#10 rst=0;
#10 ld=1;
#10 en=1;
#10 ld=0;
#90 $finish;
end
endmodule
