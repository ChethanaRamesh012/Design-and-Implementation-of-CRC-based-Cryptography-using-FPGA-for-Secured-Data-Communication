module S_Key_Schedule_3(Key,Round2key);
  input [127:0]Key;
  output [127:0]Round2key;
  
S_Block_3 Single1 (
                     .Key(Key),                              
                     .round2key(Round2key[127:96])
                   );


S_Opp_Basic3 Single2 (
                       .Box_1(Key[95:64]), 
                       .Box_2(Round2key[127:96]), 
                       .New_Key2(Round2key[95:64])
                      );


S_Opp_Basic3 Single3 (
                       .Box_1(Key[63:32]), 
                       .Box_2(Round2key[95:64]), 
                       .New_Key2(Round2key[63:32])
                      );


S_Opp_Basic3 Single4 (
                       .Box_1(Key[31:0]), 
                       .Box_2(Round2key[63:32]), 
                       .New_Key2(Round2key[31:0])
                      );

endmodule

