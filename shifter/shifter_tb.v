`timescale 1ns/1ns
module shifter_tb;
    reg din,clk,clr;
    wire [3:0] dout;
    shifter inst(
        .din(din),
        .clk(clk),
        .clr(clr),
        .dout(dout)
    );
    initial begin
        $dumpfile("shifter.vcd");
        $dumpvars(0,shifter_tb);
    end
    initial begin
        clk = 1'b1;
        clr = 1'b1;
        #100 clr = 1'b0;
        repeat(100)
            begin
                #20 din = 1'b1;
                #10 din = 1'b0;
            end
        #1000   $stop;
    end
always #10 clk = ~clk;
endmodule