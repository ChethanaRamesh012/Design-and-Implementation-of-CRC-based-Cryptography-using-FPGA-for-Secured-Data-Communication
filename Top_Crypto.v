module AES_TOP_Cryptoc (Clk,Rst,Plain_Text_In,Key,Cipher_Text,Plain_Text_Out);
  input Clk,Rst;
  input [127:0]Plain_Text_In,Key;
  output [127:0]Plain_Text_Out;
  output [127:0]Cipher_Text;

  wire [15:0]Out;
  wire [143:0]XX1;
  
  
S_Topmodule_AES_Encryption AES_Design (
    .Clk(Clk),
    .Rst(Rst),
    .Plain_Test(Plain_Text_In), 
    .Key(Key), 
    .Cipher_Test(Cipher_Text)
    );

Segmented_CRC M0 (Clk,Rst,Cipher_Text[15:0],Out);     
    
assign XX1={Cipher_Text,Out};

S_AES_Decryption Decryption_Unit (
    .Clk(Clk),
    .Rst(Rst),
    .Cipher_Text(XX1[143:16]), 
    .Key(Key), 
    .Plain_Text(Plain_Text_Out)
    );

endmodule