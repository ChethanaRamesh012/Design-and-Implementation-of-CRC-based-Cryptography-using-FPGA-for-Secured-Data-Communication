module S_Opp_Basic3(Box_1,Box_2,New_Key2);
  
  input [31:0]Box_1,Box_2;
  
  output [31:0]New_Key2;
  
  assign New_Key2 = Box_1 ^ Box_2;
  
endmodule
