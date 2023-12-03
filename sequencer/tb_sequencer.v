`timescale 1ns/1ps
module tb_sequencer;
    wire [7:0] y;
    reg clk,clr;
    sequencer inst(
        .y(y),
        .clk(clk),
        .clr(clr)
    );
    initial begin
        clk = 1'b0;
        clr = 1'b1;
        #100 clr = 1'b0;
        #1000 $stop;
    end
    initial
    begin            
    $dumpfile("wave.vcd");        //生成的vcd文件名称
    $dumpvars(0, tb_sequencer);    //tb模块名称
    end
    always #10 clk = ~clk;
endmodule