module S_Inv_Sbox(in,out);  
  input [7:0]in;  
  output [7:0]out;
  wire [3:0]C,D,E,F,G,I,J,H,M,N;  
  wire [7:0]B,O,P;  
  assign C=B[7:4];  
  assign D=B[3:0];  
  assign O[7:4]=M;  
  assign O[3:0]=N;
    
  S_InvAffine S0(.q(in),.i(P));
  S_Isomorphic_Map S1(.X(P),.Y(B));
  S_Square_Block S2(.X(C),.Y(E));  
  S_4bitAdd S3(.X(D),.Y(C),.Z(F));
  S_4bitmulitiplication S4(.A(F),.B(D),.D(G));
  S_4bitAdd S5(.X(G),.Y(H),.Z(I));
  S_Multi_Constant_lambda S6(.A(E),.B(H));
  S_Multiplicative_Inv S7(.A(I),.B(J));
  S_4bitmulitiplication S8(.A(J),.B(C),.D(M));
  S_4bitmulitiplication S9(.A(J),.B(F),.D(N));   
  S_Inv_Isomorphic_Map S10(.Y(O),.X(out));  

    
  endmodule

    





