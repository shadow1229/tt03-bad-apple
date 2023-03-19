module phrase_db_2 ( 
    input wire [3:0] address, 
    output reg [31:0] db_entry,
    output reg [7:0] length_entry, 
    output reg [2:0] n_note  
);
    always @(*) begin
        //['16c#4', '16d#3', '16d#4', '16f#3', '16f#4', '16g#3', '16g#4', '16p', '16d4','16e4']
        case(address)
            0: begin 
                db_entry = 32'h11272020;
                length_entry = 8'b10000000;
                n_note = 3'b110; //n_note = # of note -1
            end
            1: begin 
                db_entry = 32'h12454600;
                length_entry = 8'b10010000;
                n_note = 3'b101; 
            end
            2: begin 
                db_entry = 32'h54632400;
                length_entry = 8'b10010000;
                n_note = 3'b101; 
            end
            3: begin 
                db_entry = 32'h17177777;
                length_entry = 8'b11110000;
                n_note = 3'b011; 
            end   
            4: begin 
                db_entry = 32'h17111177;
                length_entry = 8'b11000000;
                n_note = 3'b101; 
            end
            5: begin 
                db_entry = 32'h17117777;
                length_entry = 8'b11110000;
                n_note = 3'b011; 
            end 
            6: begin
                db_entry = 32'h89899777;
                length_entry = 8'b01011000;
                n_note = 3'b100;
            end
            7: begin 
                db_entry = 32'h54632400;
                length_entry = 8'b10010000; // this will be ignored, and triplet will be used
                n_note = 3'b101; 
            end
        default: begin
                db_entry = 32'h77777777;
                length_entry = 8'b00000000;
                n_note = 3'b111; 
            end
        endcase
    end
endmodule
