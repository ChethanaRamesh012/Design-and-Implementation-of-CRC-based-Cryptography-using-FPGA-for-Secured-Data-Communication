module S_Final_round_AES(in,Key,out);
  
  input [127:0]in,Key;
  
  output [127:0]out;
  
  wire [127:0]A,B,C;
  
S_128bit_S_box S_Box (
                      .in(in), 
                      .out(A)
                     );

S_Shift_Rows Shift_row (
                        .S_Box_out(A), 
                        .Shift_Rows(B)
                       );
    
S_Add_round_key Add_round (
                           .Data(B), 
                           .key(Key), 
                           .out(out)
                          );
 
 endmodule
