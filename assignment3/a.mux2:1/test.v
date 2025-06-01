module mux2to1_test;
  reg a, b, sel;
  wire y;
  mux2to1 uut (a,b,sel,y);

  initial begin
    $dumpfile("mux2to1.vcd");
    $dumpvars(0, mux2to1_test);
    
    a = 0; b = 0; sel = 0; #10;
    a = 0; b = 1; sel = 0; #10;
    a = 0; b = 1; sel = 1; #10;
    a = 1; b = 0; sel = 0; #10;
    a = 1; b = 0; sel = 1; #10;
    a = 1; b = 1; sel = 0; #10;
    a = 1; b = 1; sel = 1; #10;

    $finish;
  end
endmodule
