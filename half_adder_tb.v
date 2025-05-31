module half_adder_tb;
reg A,B ;

wire SUM,CARRY ;

half_adder uut(
    .a(A),
    .b(B),
    .sum(SUM),
    .carry(CARRY)
);

initial begin
    $monitor("time=%0t | A=%b , B=%b : SUM=%b, CARRY=%b",$time,A,B,SUM,CARRY);
end

initial begin
    //00
    A=0;B=0;
    #10;
    //10
    A=1;B=0;
    #10;
    //01
    A=0;B=1;
    #10;
    //11
    A=1 ; B=1;
    #10;
    $finish;
end

initial begin
  $dumpfile("half_adder.vcd");
  $dumpvars(0, tb_half_adder);
end

endmodule