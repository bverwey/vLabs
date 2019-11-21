module dff(
  input clk, d,
  output q
);
  
  
  always @(posedge clk)
    begin
      q <= d;  //q is d   
    end
           //posedge means goes to 1 then at 0 nothing happens
endmodule
  
module dff_top(
  input clk,
  output q
);

  dff uut(clk, 0, q);
  //can put in 0 or 1
  
endmodule

  
  