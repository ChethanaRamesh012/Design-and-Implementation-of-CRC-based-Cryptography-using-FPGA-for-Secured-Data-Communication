module Computing_Module (Clk,Rst,TC,WB,Result);
  parameter N=16;
  input Clk,Rst;
  input [N-1:0] TC,WB;
  output reg [N-1:0] Result;

  reg [N-1:0] temp1,temp1a;
  reg [N-1:0] temp2,temp2a;
  reg [2*N-1:0] mul1;
  reg [2*N-1:0] mul2;
  
  integer i;

  always @ (posedge Clk)
  begin
    if(Rst)
      begin
      temp1 = 'd0;
      temp2 = 'd0;
      end
    else
      begin
      temp1 = TC;
      temp2 = WB;
      end    
      
      
    for (i = 1; i < N; i = i + 1) 
    begin
      temp1a = temp1 * TC; // Compute T^nC(k)
      temp2a = temp2 * WB; // Compute T^(n-i)Sb(i-1)
    end

     Result = temp1a + temp2a; // Compute the final result
  end

endmodule
