module S_Topmodule_AES_Encryption(Clk,Rst,Plain_Test,Key,Cipher_Test);
  input Clk,Rst;
  input [127:0]Plain_Test,Key;
  output [127:0]Cipher_Test;
  wire [127:0]Round2key1,Round2key2,Round2key3,Round2key4,Round2key5,Round2key6,Round2key7,Round2key8,Round2key9,Round2key10;
  wire [127:0]Cipher_Testa;
  
  S_Encryption_Sub    Enc (
                           .Plain_Test(Plain_Test), 
                           .Cipher_Test(Cipher_Testa), 
                           .Key(Key), 
                           .Round2key1(Round2key1), 
                           .Round2key2(Round2key2), 
                           .Round2key3(Round2key3), 
                           .Round2key4(Round2key4), 
                           .Round2key5(Round2key5), 
                           .Round2key6(Round2key6), 
                           .Round2key7(Round2key7), 
                           .Round2key8(Round2key8), 
                           .Round2key9(Round2key9), 
                           .Round2key10(Round2key10)
                           );
                           



S_Top_Key_schedule keyseh (
                           .Key(Key), 
                           .Round2key1(Round2key1), 
                           .Round2key2(Round2key2), 
                           .Round2key3(Round2key3), 
                           .Round2key4(Round2key4), 
                           .Round2key5(Round2key5), 
                           .Round2key6(Round2key6), 
                           .Round2key7(Round2key7), 
                           .Round2key8(Round2key8), 
                           .Round2key9(Round2key9), 
                           .Round2key10(Round2key10)
                          );

  Regis R0 (Clk,Rst,Cipher_Testa,Cipher_Test);                          

endmodule