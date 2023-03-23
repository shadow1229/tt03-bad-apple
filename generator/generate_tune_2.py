#!/usr/bin/env python3
sampling_rate=12000
#transpose=-3
transpose=-1
notes_1 = [('c#',4), ('d#', 3), ('d#', 4),  ('f#', 3),
           ('f#', 4), ('g#', 3),('g#', 4),  ('p',0) ,
           ('d',4),('e',4)]

def dec2bin(num,n_digits):
    result_list = ['0' for i in range(n_digits)]
    for i in range(n_digits):
        val = num%2
        num = num//2
        result_list[n_digits-1-i] = str(val)
    result = "".join(result_list)
    return result
    
def tune2tick(note_tuple, transpose, sampling_rate):
    
    translate = ['c','c#','d','d#','e','f',
                 'f#','g','g#','a','a#','b']
                 
    note, octave = note_tuple
    if note == 'p':
        ticks = 0
    else:             
        N = translate.index(note)
        note = ((octave+transpose)*12)+N
        freq = 16.3516*pow(2,note/12)
        ticks = int(sampling_rate / freq)
    ticks_bin = dec2bin(ticks,8)
    return ticks_bin
    
f = open('freq_db_2.v','w')
f.write('module freq_db_2 ( \n')
f.write('    input wire [3:0] address, \n')
f.write('    output reg [7:0] db_entry \n);\n')
f.write('    always @(*) begin\n')

f.write('        case(address)\n') 
for i, note_tuple in enumerate(notes_1):
    bin_str = tune2tick(note_tuple, transpose, sampling_rate)
    f.write("            %d: db_entry = 8'b%s;\n"%(i,bin_str))
f.write('        default:\n')    
f.write("               db_entry = 8'b00000000;\n")
f.write('        endcase\n')
f.write('    end\n')
f.write('endmodule')
f.close()  


