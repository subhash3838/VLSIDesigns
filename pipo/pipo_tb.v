module pipo_tb;
reg clk,rst;
reg [3:0] pin;
wire [3:0] pout;

pipo uut(
.clk(clk),
.rst(rst),
.pin(pin),
.pout(pout)
);

initial begin
clk=0;
forever #5 clk= ~clk;
end

initial begin
 $monitor($time," rst=%b | pin=%b | pout=%b",rst,pin,pout);

rst=1;pin=4'b0000;
#10 rst=0;
pin=4'b0001;
#10 pin=4'b0101;
#10 pin=4'b1101;
#10 pin=4'b1010;
#10 pin=4'b0111;
#15 $finish;
end
endmodule
