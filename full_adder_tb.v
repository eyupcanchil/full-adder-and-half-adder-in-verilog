module tb_full_adder;

reg a,b,c;

wire sum,carry;

full_adder uut(
    .a(a),
    .b(b),
    .c(c),
    .sum(sum),
    .carry(carry)
);

initial begin
    $monitor("time=%0t | a=%b , b=%b,c=%b => sum=%b, carry=%b",$time,a,b,c,sum,carry);
end

initial begin
    //000
    a = 0; b = 0; c = 0; #10;
    //001
    a = 0; b = 0; c = 1; #10;
    //010
    a = 0; b = 1; c = 0; #10;
    //011
    a = 0; b = 1; c = 1; #10;
    //100
    a = 1; b = 0; c = 0; #10;
    //101
    a = 1; b = 0; c = 1; #10;
    //110
    a = 1; b = 1; c = 0; #10;
    //111
    a = 1; b = 1; c = 1; #10;
end

initial begin
  $dumpfile("full_adder.vcd");
  $dumpvars(0, tb_full_adder);
end

endmodule