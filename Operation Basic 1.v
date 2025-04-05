module S_Opp_Basic1(Key,ChangeKey1);
  
  input[127:0]Key;
  
  output [31:0]ChangeKey1;
  
  wire [127:0]ChangeKey;
  
  assign ChangeKey1=ChangeKey[31:0];
  
  assign ChangeKey[63:32]  =Key[63:32];
  
  assign ChangeKey[95:64]  =Key[95:64];
  
  assign ChangeKey[127:96] =Key[127:96];
 
  assign ChangeKey[31:24]  =Key[23:16];
  
  assign ChangeKey[23:16]  =Key[15:8];
  
  assign ChangeKey[15:8]   =Key[7:0];
  
  assign ChangeKey[7:0]    =Key[31:24];
  
endmodule

/*
  |----------|----------|----------|----------|
  |127 to 120|95 to 88  |63 to 56  |23 to 16  |  
  |----------|----------|----------|----------|    
  |119 to 112|87 to 80  |55 to 48  |15 to 8   |   
  |----------|----------|----------|----------|   
  |111 to 104|79 to 72  |47 to 40  |7 to 0    |  
  |----------|----------|----------|----------|  
  |103 to 96 |71 to 64  |39 to 32  |31 to 24  |  
  |----------|----------|----------|----------|
*/