module wksg(
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
        sx<=0;
        sy<=0;
         end
      if(x==2'b00 && y==2'b01)
       begin
         sx<=0;
         sy<=1;
         end
     if(x==2'b01 && y==2'b00)
       begin
         sx<=1;
         sy<=0;
       end
    end
endmodule

module wksg_top(
  input clk,
  input x,
  input y,
  output sx,
  output sy
);
  wksg uuf(0, 0, clk, sx, sy);
endmodule