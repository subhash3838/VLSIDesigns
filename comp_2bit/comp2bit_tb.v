module comp2bit_tb;
reg [1:0] a,b;
wire g,l,e;

comp_2bit uut(
.a(a),
.b(b),
.g(g),
.l(l),
.e(e)
);

initial begin
$monitor($time," a=%b,b=%b | g=%b,l=%b,e=%b",a,b,g,l,e);

a=2'b00;b=2'b00;
#10 a=2'b00;b=2'b01;
#10 a=2'b01;b=2'b00;
#10 a=2'b01;b=2'b10;
#10 a=2'b10;b=2'b01;
#10 a=2'b11;b=2'b10;
#10 a=2'b10;b=2'b11;

#10 $finish;
end
endmodule
