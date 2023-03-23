#!/usr/bin/env python3
import sys

phrases=['08d#3,16d#3,16d#4,16p,16d#4,16c#4,16d#4', 
         '08d#3,16d#4,16f#4,08g#3,16f#4,16g#4', 
         '08g#3,16f#4,16g#4,08f#3,16d#4,16f#4',
         '08d#3,08p,08d#3,08p',
         '08d#3,08p,16d#3,16d#3,16d#3,16d#3',
         '08d#3,08p,08d#3,08d#3',
         '16d4,08e4,16d4,08e4,08e4',
         '08g#3,16f#4,16g#4,08f#3,16d#4,16f#4']

def dec2bin(num,n_digits):
    result_list = ['0' for i in range(n_digits)]
    for i in range(n_digits):
        val = num%2
        num = num//2
        result_list[n_digits-1-i] = str(val)
    result = "".join(result_list)
    return result

#TODO: fix order    
def get_notes(p_list=['16c#4,16d#3,16d#4,16f#3,16f#4,16g#3,16g#4,16p,16d4,16e4']):
    result_list = []
    for phrase in p_list:
        psp = phrase.strip().split(',')
        for sound in psp:
            result_list.append(sound[2:])
    #result = list(set(result_list))
    #result.sort()
    #return result
    return result_list

def phrase2notes(phrase,notes,n_notes=8, length_dict={'08':'1','16':'0'}):
    sound_list  = [0 for i in range(n_notes)]
    length_list = ['0' for i in range(n_notes)]
    psp = phrase.strip().split(',')
    for i, note in enumerate(psp):
        length = note[0:2]
        sound = note[2:]
        length_idx = length_dict[length]
        sound_idx = notes.index(sound)
        length_list[i] = length_idx
        sound_list[i] = sound_idx
        
    n_note_str = dec2bin((len(psp)-1),3)
    return sound_list,length_list,n_note_str 

d2h = ['0','1','2','3',
       '4','5','6','7',
       '8','9','A','B',
       'C','D','E','F']

#notes = get_notes(phrases)
notes = get_notes()
pause_idx = notes.index('p')
print(notes)
print(len(notes))
f = open('phrase_db_2.v','w')
f.write('module phrase_db_2 ( \n')
f.write('    input wire [3:0] address, \n')
f.write('    output reg [31:0] db_entry, \n')
f.write('    output reg [7:0] length_entry, \n')
f.write('    output reg [2:0] n_note \n);\n')
f.write('    always @(*) begin\n')
f.write('        case(address)\n') 
for i, phrase in enumerate(phrases):
    sound_list,length_list,n_note_str  = phrase2notes(phrase,notes)
    sound_str_list = [d2h[sound] for sound in sound_list ]
    sound_str = "".join(sound_str_list)
    length_str = "".join(length_list)
    f.write("            %d: begin \n"%(i))
    f.write("                db_entry = 32'h%s;\n"%(sound_str))
    f.write("                length_entry = 8'b%s;\n"%(length_str))
    f.write("                n_note = 3'b%s; \n"%(n_note_str))
    f.write("            end \n")
f.write('        default: begin \n')    
f.write("                db_entry = 32'h")
for i in range(8):
    f.write('%s'%d2h[pause_idx])
f.write(";\n")
f.write("                length_entry = 8'b00000000;\n")
f.write("                n_note = 3'b111;\n")
f.write("            end \n")
f.write('        endcase\n')
f.write('    end\n')
f.write('endmodule')
f.close()  

