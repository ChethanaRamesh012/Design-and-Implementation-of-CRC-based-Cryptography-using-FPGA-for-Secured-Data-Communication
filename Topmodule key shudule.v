module S_Top_Key_schedule(Key,Round2key1,Round2key2,Round2key3,Round2key4,Round2key5,Round2key6,Round2key7,Round2key8,Round2key9,Round2key10);
 
  input [127:0]Key;
  
  output [127:0] Round2key1,Round2key2,Round2key3,Round2key4,Round2key5,Round2key6,Round2key7,Round2key8,Round2key9,Round2key10;
  
S_Key_Schedule_1 K1 (
                      .Key(Key), 
                      .Round2key(Round2key1)
                     );


S_Key_Schedule_2 K2 (
                      .Key(Round2key1), 
                      .Round2key(Round2key2)
                     );

S_Key_Schedule_3 K3 (
                      .Key(Round2key2), 
                      .Round2key(Round2key3)
                      );


S_Key_Schedule_4 K4 (
                      .Key(Round2key3), 
                      .Round2key(Round2key4)
                     );


S_Key_Schedule_5 K5 (
                      .Key(Round2key4), 
                      .Round2key(Round2key5)
                     );


S_Key_Schedule_6 K6 (
                      .Key(Round2key5), 
                      .Round2key(Round2key6)
                     );


S_Key_Schedule_7 K7 (
                      .Key(Round2key6), 
                      .Round2key(Round2key7)
                     );
 

S_Key_Schedule_8 K8 (
                     .Key(Round2key7), 
                     .Round2key(Round2key8)
                    );


S_Key_Schedule_9 K9 (
                     .Key(Round2key8), 
                     .Round2key(Round2key9)
                     );


S_Key_Schedule_10 K10 (
                       .Key(Round2key9), 
                       .Round2key(Round2key10)
                      );

endmodule
