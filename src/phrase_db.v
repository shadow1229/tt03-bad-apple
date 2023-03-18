module phrase_db ( 
    input wire [3:0] address, 
    output reg [31:0] db_entry,
    output reg [7:0] length_entry, 
    output reg [2:0] n_note 
);
    always @(*) begin
        //length entry: 0: 8th note, 1:4th note
        //['8a#6', '8b6', '8c#6', '8c#7', '8c6', '8d#6', '8d#7', '8d7', '8f#6', '8f#7', '8f6', '8f7', '8g#6', '8p']
        case(address)
            1: begin 
                db_entry = 32'h5A8C0630;
                length_entry = 8'b00001000;
                n_note = 3'b110; //n_note = # of note -1
            end
            2: begin 
                db_entry = 32'h050C8A00;
                length_entry = 8'b11000000;
                n_note = 3'b101; 
            end
            3: begin
                db_entry = 32'h5A8C0C80;
                length_entry = 8'b00001000;
                n_note = 3'b110;
            end
            4: begin
                db_entry = 32'hA5A8A52A; 
                length_entry = 8'b00000000;
                n_note = 3'b111; 
            end
            5: begin
                db_entry = 32'hA8C00000;
                length_entry = 8'b11110000;
                n_note = 3'b011; 
            end
            6: begin
                db_entry = 32'h360C0C00;
                length_entry = 8'b00001000;
                n_note = 3'b110; 
            end
            7: begin
                db_entry = 32'hC8A25250;
                length_entry = 8'b00001000;
                n_note = 3'b110; 
            end
            8: begin
                db_entry = 32'hA8C05030;
                length_entry = 8'b00001000;
                n_note = 3'b110; 
            end
            9: begin
                db_entry = 32'h360C06B0;
                length_entry = 8'b00001000;
                n_note = 3'b110; 
            end
            10: begin
                db_entry = 32'h9B630C00;
                length_entry = 8'b00001000;
                n_note = 3'b110; 
            end
            11: begin
                db_entry = 32'hC8A25030;
                length_entry = 8'b00001000;
                n_note = 3'b110;
            end
            12: begin
                db_entry = 32'hC8A25D00;
                length_entry = 8'b00001100;
                n_note = 3'b101; 
            end
            13: begin
                db_entry = 32'hC8A25170;
                length_entry = 8'b00001000;
                n_note = 3'b110; 
            end
        default: begin
                db_entry = 32'hDDDDDDDD;
                length_entry = 8'b00000000;
                n_note = 3'b111; 
            end    
        endcase
    end
endmodule
