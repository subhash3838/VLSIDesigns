module allgates_tb;
reg a,b;
wire and1,or1,not1,xor1,nand1,nor1;

allgates dut(
.a(a),
.b(b),
.and1(and1),
.or1(or1),
.not1(not1),
.xor1(xor1),
.nand1(nand1),
.nor1(nor1)
);

initial begin
 $monitor($time,"a=%b,b=%b | and1=%b,or1=%b,not1=%b,xor1=%b,nand1=%b,nor1=%b",a,b,and1,or1,not1,xor1,nand1,nor1);

 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10 $finish;
end
endmodule

