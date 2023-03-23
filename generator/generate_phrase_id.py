#!/usr/bin/env python3
import sys
data = [  0, 19, 20, 19, 21, 19, 20, 19, 21, 19, 20, 19, 21, 19, 20, 19, 19,
             16, 16, 16, 17, 16, 16, 16, 18, 16, 16, 16, 17, 16, 16, 16, 23, 
              1,  2,  3,  4,  1,  2,  3,  5,  1,  2,  3,  4,  1,  2,  3,  5,
              6,  6,  7,  8,  6,  6,  7,  8,  6,  6,  7,  8,  6,  9, 10, 11, 
              6,  6,  7,  8,  6,  6,  7,  8,  6,  6,  7,  8,  6,  9, 10, 12, 
             16, 16, 16, 17, 16, 16, 16, 18, 16, 16, 16, 17, 16, 16, 16, 23,
              1,  2,  3,  4,  1,  2,  3,  5,  1,  2,  3,  4,  1,  2,  3,  5,
              6,  6,  7,  8,  6,  6,  7,  8,  6,  6,  7,  8,  6,  9, 10, 13, 
              6,  6,  7,  8,  6,  6,  7,  8,  6,  6,  7,  8,  6,  9, 10, 12, 
             22, 22, 22, 22, 22, 22, 22, 22]
def dec2bin(num,n_digits):
    result_list = ['0' for i in range(n_digits)]
    for i in range(n_digits):
        val = num%2
        num = num//2
        result_list[n_digits-1-i] = str(val)
    result = "".join(result_list)
    return result

f = open('phrase_id_db.v','w')
f.write('module phrase_id_db ( \n')
f.write('    input wire [7:0] address, \n')
f.write('    output reg [4:0] db_entry \n);\n')
f.write('    always @(*) begin\n')
f.write('        case(address)\n') 
for i, dat in enumerate(data):
    bin_str = dec2bin(dat,5)
    f.write("            %d: db_entry = 5'b%s;\n"%(i,bin_str))
f.write('        default:\n')    
f.write("                db_entry = 5'b00000;\n")
f.write('        endcase\n')
f.write('    end\n')
f.write('endmodule')
f.close()  

