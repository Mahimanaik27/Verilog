module adder_test();
  reg a,b,c;
wire sum,carry;
  adder uut(a,b,c,sum,carry);
  	initial begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  initial
    begin
      a=1'b0;b=1'b1;c=1'b0;
  #10 a=1'b0;b=1'b1;c=1'b1;
      #10 a=1'b1;b=1'b0;c=1'b0;
      #10 $finish;
    end
      endmodule
