module sr_ff(
  input [1:0]s,
  input [1:0]r,
  input clk,
  output q,
  output qi
  );
reg q,qi;
  always @(posedge clk)
    begin
      q<=0;
      if(s==2'b00 && r==2'b00)
        qi<=q;
      if(s==2'b00 && r==2'b01)
        qi<=1'b0;
      if(s==2'b01 && r==2'b00)
        qi<=1'b1;
      if(s==2'b01 && r==2'b01)
        qi<=1'b0;
    end
endmodule

module sr_ff_top(
  input clk,
  output q,
  output qi
);
  sr_ff uuf(0,0, clk, q, qi);
endmodule
