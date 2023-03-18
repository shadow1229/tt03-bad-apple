module freq_db_2 ( 
    input  reg [3:0] address, 
    output wire [7:0] db_entry 
);
    always @(*) begin
        case(address)
            0: db_entry = 8'b01010110;
            1: db_entry = 8'b10011010;
            2: db_entry = 8'b01001101;
            3: db_entry = 8'b10000001;
            4: db_entry = 8'b01000000;
            5: db_entry = 8'b01110011;
            6: db_entry = 8'b00111001;
            7: db_entry = 8'b00000000;
            8: db_entry = 8'b01010000;
            9: db_entry = 8'b01001000;
        default:
               db_entry = 8'b00000000;
        endcase
    end
endmodule
