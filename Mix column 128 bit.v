module S_Mixcolumn_128bit(In,Out);
  
  input [127:0] In;
  
  output [127:0] Out;
  
S_mixcolumn_32bit N1 (
    .a(In[127:120]), 
    .b(In[119:112]), 
    .c(In[111:104]), 
    .d(In[103:96]), 
    .out(Out[127:96])
    );

S_mixcolumn_32bit N2 (
    .a(In[95:88]), 
    .b(In[87:80]), 
    .c(In[79:72]), 
    .d(In[71:64]), 
    .out(Out[95:64])
    );


S_mixcolumn_32bit N3 (
    .a(In[63:56]), 
    .b(In[55:48]), 
    .c(In[47:40]), 
    .d(In[39:32]), 
    .out(Out[63:32])
    );


S_mixcolumn_32bit N4 (
    .a(In[31:24]), 
    .b(In[23:16]), 
    .c(In[15:8]), 
    .d(In[7:0]), 
    .out(Out[31:0])
    );

endmodule