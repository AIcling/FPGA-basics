module sequencer(
    input wire clk,
    input wire clr,
    output reg[7:0] y
);
    reg [7:0] yt;
    parameter s0 = 8'b10000000,
    s1 = 8'b11000001,
    s2 = 8'b11100000,
    s3 = 8'b00010000,
    s4 = 8'b11111000,
    s5 = 8'b00000011,
    s6 = 8'b11110011,
    s7 = 8'b00000001;
    always @(posedge clk) begin
        if(clr)
            yt <= s0;
        else
            begin
                case(yt)
                    s0: yt <= s1;
                    s1: yt <= s2;
                    s2: yt <= s3;
                    s3: yt <= s4;
                    s4: yt <= s5;
                    s5: yt <= s6;
                    s6: yt <= s7;
                    s7: yt <= s0;
                    default: yt <= s0;
                endcase
            end
            assign y = yt;
    end
    // assign y = yt;
endmodule