module CRC_Stride_by_5 (Clk,Rst,Data_In,CRC_Out);
  parameter N=16;
  input wire Clk;
  input wire Rst;
  input wire [N-1:0] Data_In;
  output wire [N-1:0] CRC_Out;
  reg [N-1:0] crc_reg;
  reg [N-1:0] data_reg;
  integer i,j;

  // CRC generator polynomial (CRC-16/CCITT)
  parameter POLYNOMIAL = 16'h1021;

  always @(posedge Clk) 
  begin
    if (Rst) 
    begin
      crc_reg = 'h0000;
      data_reg = 'h00;
    end 
	else 
	begin
      // Shift in new data
      data_reg = Data_In;

      // Perform stride-by-5 CRC division
      for (i = (N-1); i >= 0; i = i - 5) 
      begin
        crc_reg = crc_reg ^ (data_reg << i);

      for (j = (N-1); j >= 5; j = j - 1) 
      begin
          crc_reg[j] = crc_reg[j] ^ crc_reg[j-5];
      end
          crc_reg[4:0] = crc_reg[4:0] ^ (crc_reg[(N-1):5] & POLYNOMIAL);
      end
    end
  end

  assign CRC_Out = crc_reg;

endmodule