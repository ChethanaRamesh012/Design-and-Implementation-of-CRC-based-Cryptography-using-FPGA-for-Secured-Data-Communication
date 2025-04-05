module Segmented_CRC (Clk,Rst,In,Out);
  parameter N=16;
  input Clk,Rst;
  input [N-1:0]In;
  output [N-1:0]Out;
  wire [N-1:0] CRC_Stride_Out,Reg_X,X,XX;
   
    LFSR_16bit MM_0 (
    .clk(Clk), 
    .reset(Rst), 
    .lfsr_output(XX)
    );

   
  ///Region 1 & 2  CRC_Stride_by_5 with XOR /// 
  
  CRC_Stride_by_5 MM0 (
    .Clk(Clk), 
    .Rst(Rst), 
    .Data_In(In), 
    .CRC_Out(CRC_Stride_Out)
    );


///Region 3 4


Computing_Module MM1 (.Clk(Clk),.Rst(Rst),.TC(XX),.WB(CRC_Stride_Out),.Result(X));
 

Pipelining_go_back MM2 (.Clk(Clk),.Rst(Rst),.C(X),.result(Reg_X));


     
 assign Out=Reg_X;   

endmodule