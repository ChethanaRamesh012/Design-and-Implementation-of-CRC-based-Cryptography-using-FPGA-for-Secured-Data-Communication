Combine AES encryption with CRC error detection to ensure the accuracy of transmitted 
data. In this approach, the data is first encrypted using AES, generating cipher text. Then a 
CRC checksum is calculated over the cipher text, producing a small value that is appended 
to the end of the cipher text. The entire message, including the checksum, is then 
transmitted or stored. When the receiver gets the message, they first perform the decryption 
process using the same AES key to generate the original plain text. Next, they calculate the 
CRC checksum over the decrypted message, and compare it to the checksum that was 
transmitted with the message. If the two checksums match, the receiver can be confident 
that the message was transmitted without errors. If the checksums do not match, the 
receiver knows that an error has occurred during transmission or storage of the message. 
CRC is used to make key generation in AES Design unit instead of usual Key Generation. 
Due to the Replacement of TRNG (True random number generators) we improve the 
performance in terms of area and Delay. The advanced encryption standard algorithm, 
which provides a significantly improved Security of Data Encryption. CRC in AES is to 
generate a random number or key for use in AES encryption or decryption. This involves 
generating a CRC checksum over a set of random data, and using the result as a key or part 
of a key in AES encryption or decryption. This Design is implemented using Verilog HDL 
and simulated by Xilinx Vivado and synthesized by Xilinx tool. CRC can be used in 
cryptography to ensure that encrypted data is transmitted without corruption and that the 
resulting decrypted data is accurate and reliable. 
