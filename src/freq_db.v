module freq_db ( 
    input wire [3:0] address, 
    input wire is_highkey, 
    output wire [7:0] db_entry 
);
    always @(*) begin
        if (is_highkey==0) begin
            case(address)
                0: db_entry = 8'b00110011;
                1: db_entry = 8'b00110000;
                2: db_entry = 8'b01010110;
                3: db_entry = 8'b00101011;
                4: db_entry = 8'b01011011;
                5: db_entry = 8'b01001101;
                6: db_entry = 8'b00100110;
                7: db_entry = 8'b00101000;
                8: db_entry = 8'b01000000;
                9: db_entry = 8'b00100000;
                10: db_entry = 8'b01000100;
                11: db_entry = 8'b00100010;
                12: db_entry = 8'b00111001;
                13: db_entry = 8'b00000000;
            default:
                    db_entry = 8'b00000000;
            endcase
        end else begin
            case(address)
                0: db_entry = 8'b00110000;
                1: db_entry = 8'b00101101;
                2: db_entry = 8'b01010001;
                3: db_entry = 8'b00101000;
                4: db_entry = 8'b01010110;
                5: db_entry = 8'b01001000;
                6: db_entry = 8'b00100100;
                7: db_entry = 8'b00100110;
                8: db_entry = 8'b00111101;
                9: db_entry = 8'b00011110;
                10: db_entry = 8'b01000000;
                11: db_entry = 8'b00100000;
                12: db_entry = 8'b00110110;
                13: db_entry = 8'b00000000;
            default:
                    db_entry = 8'b00000000;
            endcase
        end
    end
endmodule
