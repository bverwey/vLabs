`timescale 1ns / 1ps

module ParityChecker(
input [7:0] bitt,
output reg ans
);
        
integer count = 0;
integer i = 0;

initial
begin
    count = 0;
    for(i=0; i<=7; i=i+1)
    begin
        if(bitt[i]==1)
        count = count + 1;
    end
    if(count%2==0)  //even parity
    ans = 1;
    else
    ans = 0;

end

endmodule


module ParityChecker_top(
  output reg ans
);
  
  ParityChecker uut('b00001111, ans);
endmodule 