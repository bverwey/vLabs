module fib(
  input clk,
  output reg [3:0] y
) ;
  
  always @(posedge clk) begin
   begin
    y=0; 
     for (int i = 0; i++) begin
    end
endmodule

//one clock one output y that is a register output of four bits 3:0
//3 bit register output
//input clk