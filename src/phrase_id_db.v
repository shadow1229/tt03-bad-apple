module phrase_id_db ( 
    input wire [7:0] address, 
    output reg [4:0] db_entry 
);
    always @(*) begin
        case(address)
            0: db_entry = 5'b00000;
            1: db_entry = 5'b10011;
            2: db_entry = 5'b10100;
            3: db_entry = 5'b10011;
            4: db_entry = 5'b10101;
            5: db_entry = 5'b10011;
            6: db_entry = 5'b10100;
            7: db_entry = 5'b10011;
            8: db_entry = 5'b10101;
            9: db_entry = 5'b10011;
            10: db_entry = 5'b10100;
            11: db_entry = 5'b10011;
            12: db_entry = 5'b10101;
            13: db_entry = 5'b10011;
            14: db_entry = 5'b10100;
            15: db_entry = 5'b10011;
            16: db_entry = 5'b10011;
            17: db_entry = 5'b10000;
            18: db_entry = 5'b10000;
            19: db_entry = 5'b10000;
            20: db_entry = 5'b10001;
            21: db_entry = 5'b10000;
            22: db_entry = 5'b10000;
            23: db_entry = 5'b10000;
            24: db_entry = 5'b10010;
            25: db_entry = 5'b10000;
            26: db_entry = 5'b10000;
            27: db_entry = 5'b10000;
            28: db_entry = 5'b10001;
            29: db_entry = 5'b10000;
            30: db_entry = 5'b10000;
            31: db_entry = 5'b10000;
            32: db_entry = 5'b10010;
            33: db_entry = 5'b00001;
            34: db_entry = 5'b00010;
            35: db_entry = 5'b00011;
            36: db_entry = 5'b00100;
            37: db_entry = 5'b00001;
            38: db_entry = 5'b00010;
            39: db_entry = 5'b00011;
            40: db_entry = 5'b00101;
            41: db_entry = 5'b00001;
            42: db_entry = 5'b00010;
            43: db_entry = 5'b00011;
            44: db_entry = 5'b00100;
            45: db_entry = 5'b00001;
            46: db_entry = 5'b00010;
            47: db_entry = 5'b00011;
            48: db_entry = 5'b00101;
            49: db_entry = 5'b00110;
            50: db_entry = 5'b00110;
            51: db_entry = 5'b00111;
            52: db_entry = 5'b01000;
            53: db_entry = 5'b00110;
            54: db_entry = 5'b00110;
            55: db_entry = 5'b00111;
            56: db_entry = 5'b01000;
            57: db_entry = 5'b00110;
            58: db_entry = 5'b00110;
            59: db_entry = 5'b00111;
            60: db_entry = 5'b01000;
            61: db_entry = 5'b00110;
            62: db_entry = 5'b01001;
            63: db_entry = 5'b01010;
            64: db_entry = 5'b01011;
            65: db_entry = 5'b00110;
            66: db_entry = 5'b00110;
            67: db_entry = 5'b00111;
            68: db_entry = 5'b01000;
            69: db_entry = 5'b00110;
            70: db_entry = 5'b00110;
            71: db_entry = 5'b00111;
            72: db_entry = 5'b01000;
            73: db_entry = 5'b00110;
            74: db_entry = 5'b00110;
            75: db_entry = 5'b00111;
            76: db_entry = 5'b01000;
            77: db_entry = 5'b00110;
            78: db_entry = 5'b01001;
            79: db_entry = 5'b01010;
            80: db_entry = 5'b01100;
            81: db_entry = 5'b10000;
            82: db_entry = 5'b10000;
            83: db_entry = 5'b10000;
            84: db_entry = 5'b10001;
            85: db_entry = 5'b10000;
            86: db_entry = 5'b10000;
            87: db_entry = 5'b10000;
            88: db_entry = 5'b10010;
            89: db_entry = 5'b10000;
            90: db_entry = 5'b10000;
            91: db_entry = 5'b10000;
            92: db_entry = 5'b10001;
            93: db_entry = 5'b10000;
            94: db_entry = 5'b10000;
            95: db_entry = 5'b10000;
            96: db_entry = 5'b10010;
            97: db_entry = 5'b00001;
            98: db_entry = 5'b00010;
            99: db_entry = 5'b00011;
            100: db_entry = 5'b00100;
            101: db_entry = 5'b00001;
            102: db_entry = 5'b00010;
            103: db_entry = 5'b00011;
            104: db_entry = 5'b00101;
            105: db_entry = 5'b00001;
            106: db_entry = 5'b00010;
            107: db_entry = 5'b00011;
            108: db_entry = 5'b00100;
            109: db_entry = 5'b00001;
            110: db_entry = 5'b00010;
            111: db_entry = 5'b00011;
            112: db_entry = 5'b00101;
            113: db_entry = 5'b00110;
            114: db_entry = 5'b00110;
            115: db_entry = 5'b00111;
            116: db_entry = 5'b01000;
            117: db_entry = 5'b00110;
            118: db_entry = 5'b00110;
            119: db_entry = 5'b00111;
            120: db_entry = 5'b01000;
            121: db_entry = 5'b00110;
            122: db_entry = 5'b00110;
            123: db_entry = 5'b00111;
            124: db_entry = 5'b01000;
            125: db_entry = 5'b00110;
            126: db_entry = 5'b01001;
            127: db_entry = 5'b01010;
            128: db_entry = 5'b01101;
            129: db_entry = 5'b00110;
            130: db_entry = 5'b00110;
            131: db_entry = 5'b00111;
            132: db_entry = 5'b01000;
            133: db_entry = 5'b00110;
            134: db_entry = 5'b00110;
            135: db_entry = 5'b00111;
            136: db_entry = 5'b01000;
            137: db_entry = 5'b00110;
            138: db_entry = 5'b00110;
            139: db_entry = 5'b00111;
            140: db_entry = 5'b01000;
            141: db_entry = 5'b00110;
            142: db_entry = 5'b01001;
            143: db_entry = 5'b01010;
            144: db_entry = 5'b01100;
            145: db_entry = 5'b10110;
            146: db_entry = 5'b10110;
            147: db_entry = 5'b10110;
            148: db_entry = 5'b10110;
            149: db_entry = 5'b10110;
            150: db_entry = 5'b10110;
            151: db_entry = 5'b10110;
            152: db_entry = 5'b10110;
        default:
                db_entry = 5'b00000;
        endcase
    end
endmodule