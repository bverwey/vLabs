module fib(clk, y);
  input clk;
  output reg [3:0] y;

  reg [3:0] prev;
  
  initial begin
    prev = 1;
    y = 0;
  end
  
  always@(posedge clk) begin
    if(y>= 13)
    begin 
    prev <=1;
    y <=0;
          end
          else
            begin 
            y <= y + prev;
            prev <= y;
  	  end
  end
  
endmodule 