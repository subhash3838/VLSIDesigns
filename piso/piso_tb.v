module piso_tb;
reg clk,rst,en;
reg [3:0] pin;
wire sout;

piso uut(
.clk(clk),
.rst(rst),
.en(en),
.pin(pin),
.sout(sout)
);

initial begin
clk=0;
forever #5 clk= ~clk;
end

initial begin
 $monitor($time," rst=%b | pin=%b | sout=%b",rst,pin,sout);

rst=1; en=0;pin=4'b1011;
#10 rst=0;
#10 en=1;
#10 en=0;

#65 $finish;
end
endmodule

