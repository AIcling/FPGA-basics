module shifter(
    input wire din,
    input wire clk,
    input wire clr,
    output reg[3:0] dout
);

always @(posedge clk)
    begin
     if(clr) dout <= 4'b0;
     else 
        begin
           dout <= dout<<1;
           dout[0] <=din; 
        end
    end
endmodule