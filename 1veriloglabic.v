module and_gate(a, b, c, y);
  input a, b, c; // input ports
  output y;    // output ports...
  //putting a and b and gate into one output
  // and gate1(y, a, b); instead of assign statement
  assign y = a & ~ b | a & ~ c; // (a AND b)
 
endmodule
  
  
  
  
  module and_gate_top(
 output y
);
    and_gate uut(1, 1, 1, y);
    //put in variables 
    
    endmodule



