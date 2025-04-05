module S_4bitmulitiplication(A,B,D);
  
  input [3:0]A,B;
  
  output [3:0]D;
  
  wire [1:0]x,y,p,q,r,s;
  


S_2bitAdd V2 (
             .X(A[3:2]), 
             .Y(A[1:0]), 
             .Z(x)
             );
    
S_2bitAdd V3 (
             .X(B[3:2]), 
             .Y(B[1:0]), 
             .Z(y)
             );
    
S_2bitAdd  V4 (
               .X(q), 
               .Y(r), 
               .Z(D[3:2])
               );
    
S_2bitAdd V5 (
              .X(r), 
              .Y(s), 
              .Z(D[1:0])
              );

S_2BitMulitiplication V6 (
    .X(A[3:2]), 
    .Y(B[3:2]), 
    .Z(p)
    );
    
 S_Multi_Constant V1 (
                     .X(p), 
                     .Y(s)
                     );
       

S_2BitMulitiplication V7 (
    .X(x), 
    .Y(y), 
    .Z(q)
    );
    
S_2BitMulitiplication V8 (
    .X(A[1:0]), 
    .Y(B[1:0]), 
    .Z(r)
    );
    
endmodule






