module tb_loop_mux_dff;
  reg clk, sel, a;
  wire q_out;
  loop_mux_dff dut(clk, sel, a, q_out);
  initial begin
  $dumpfile("dump.vcd");
  $dumpvars(1, tb_loop_mux_dff);
  end
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  initial begin
    $display("Time\tclk\tsel\ta\tq_out");
    $monitor("%4t\t%b\t%b\t%b\t%b", $time, clk, sel, a, q_out);
    sel = 1; a = 1; #10
    sel = 0;        #10  
    sel = 1; a = 0; #10
    sel = 0;        #10  
    sel = 1; a = 1; #10
    sel = 0;        #10
    #20 $finish;
  end
endmodule
