module sr_ff(
  input [1:0]r,
  input [1:0]s,
  input clk,
  output q,
  output qi
  );
reg q,qi;
  always @(posedge clk)
    begin
      case(r)
        2'b00:q=qi;
        2'b01:q=1'b0;
        2'b10:q=1'b1;
        2'b11:q=1'bz;
      endcase
      qi<=q;
    end
  always @(posedge clk)
    begin
      case(s)
        2'b00:q=qi;
        2'b01:q=1'b0;
        2'b10:q=1'b1;
        2'b11:q=1'bz;
      endcase
      qi<=-q;
    end
endmodule
