module counter_tb();
  reg rst, clk, m;
  wire [3:0] count;
  counter uut(rst, clk, m, count);
  initial begin
    clk = 0;
    rst = 0;
    m = 1;        
    #10 rst = 1;
    #160 m = 0;    
    #160 $stop;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  always #5 clk = ~clk;
  initial begin
    $monitor("Time=%0t  rst=%b  clk=%b  m=%b  count=%d", $time, rst, clk, m, count);
  end
endmodule
