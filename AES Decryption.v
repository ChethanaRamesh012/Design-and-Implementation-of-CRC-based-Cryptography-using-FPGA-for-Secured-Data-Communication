module S_AES_Decryption(Clk,Rst,Cipher_Text,Key,Plain_Text);
  input Clk,Rst;
  input [127:0]Cipher_Text,Key;
  output [127:0]Plain_Text;
  wire [127:0]Round2key1,Round2key2,Round2key3,Round2key4,Round2key5,Round2key6,Round2key7,Round2key8,Round2key9,Round2key10;
  wire [127:0]Plain_Texta;

S_Decryption_unit_AES Decry (
    .Cipher_text(Cipher_Text), 
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
    .Round2key10(Round2key10), 
    .Plain_Text(Plain_Texta)
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
    

  Regis R0 (Clk,Rst,Plain_Texta,Plain_Text);                          
  
endmodule

