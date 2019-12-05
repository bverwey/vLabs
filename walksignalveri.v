module sr_ff(
  input [1:0]x,
  input [1:0]y,
  input clk,
  output sx,
  output sy
  );
reg sx,sy;
  always @(posedge clk)
    begin
      if(x==2'b00 && y==2'b00)
        begin
        sy<=0;
        sx<=0;
          end
      if(x==2'b00 && y==2'b01)
       begin
         sy<=1'b0;
      sx<=1;
         end
      begin
       if(x==2'b01 && y==2'b00)
       begin
         sy<=0;
       end
endmodule

module sr_ff_top(
  input clk,
  input x,
  input y, 
  output sx,
  output sy
);
  sr_ff uuf(0,0, clk, sx, sy);
endmodule
