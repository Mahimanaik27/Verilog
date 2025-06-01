module tb_mux4to1;
  reg a, b, c, d;
  reg [1:0] sel;
  wire y;
  mux4to1 uut(a,b,c,d,sel,y);
  initial begin
  $dumpfile("dump.vcd");
  $dumpvars(1, tb_mux4to1);
  end
  initial begin
    $display("Time sel a b c d | y");
    $monitor("%4t  %b   %b %b %b %b | %b", $time, sel, a, b, c, d, y);
    a = 0; b = 1; c = 0; d = 1;
    sel = 2'b00; #20
    sel = 2'b10; #20
    sel = 2'b11; #20
    sel = 2'b01; #20
    $finish;
  end
endmodule
