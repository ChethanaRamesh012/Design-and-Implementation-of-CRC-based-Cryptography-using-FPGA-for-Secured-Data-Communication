module S_Inv_Mixcolumn_128bit(DataIn,DataOut);
  input [127:0] DataIn;
  output [127:0] DataOut;
S_Inv_mixcolumn_word word1 (
    .a(DataIn[127:120]), 
    .b(DataIn[119:112]), 
    .c(DataIn[111:104]), 
    .d(DataIn[103:96]), 
    .out(DataOut[127:96])
    );

S_Inv_mixcolumn_word word2 (
    .a(DataIn[95:88]), 
    .b(DataIn[87:80]), 
    .c(DataIn[79:72]), 
    .d(DataIn[71:64]), 
    .out(DataOut[95:64])
    );


S_Inv_mixcolumn_word word3 (
    .a(DataIn[63:56]), 
    .b(DataIn[55:48]), 
    .c(DataIn[47:40]), 
    .d(DataIn[39:32]), 
    .out(DataOut[63:32])
    );


S_Inv_mixcolumn_word word4 (
    .a(DataIn[31:24]), 
    .b(DataIn[23:16]), 
    .c(DataIn[15:8]), 
    .d(DataIn[7:0]), 
    .out(DataOut[31:0])
    );

endmodule

