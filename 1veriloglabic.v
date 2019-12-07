module lab1(a,b,c,y);

input a,b,c;
  output y;

  assign y = (a & (~b)) | (a & (~c));

endmodule



