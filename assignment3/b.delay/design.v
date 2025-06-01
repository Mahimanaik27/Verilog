module mux2to1(a, b, sel, y);
  input a, b, sel;
  output y;
  assign y = sel ? b : a;
endmodule

module d_flip_flop(clk, d, q);
  input clk, d;
  output reg q;
  always @(posedge clk)
    q <= d;
endmodule

module loop_mux_dff(clk, sel, a, q_out);
  input clk, sel, a;
  output q_out;
  wire y, q;
  mux2to1 m(q, a, sel, y);
  d_flip_flop d(clk, y, q);
  assign q_out = q;
endmodule
