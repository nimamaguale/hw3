module voter_tb;
reg[3:0] I_tb;
wire[3:1] O_tb;
voter bla(.I(I_tb),.O(O_tb));
initial
begin
    I_tb = 4'b0000;
    #10;
    I_tb = 4'b0001;
    #10;
    I_tb = 4'b0010;
    #10;
    I_tb = 4'b0011;
    #10;
    I_tb = 4'b0100;
    #10;
    I_tb = 4'b0101;
    #10;
    I_tb = 4'b0110;
    #10;
    I_tb = 4'b0111;
    #10;
    I_tb = 4'b1000;
    #10;
    I_tb = 4'b1001;
    #10;
    I_tb = 4'b1010;
    #10;
    I_tb = 4'b1011;
    #10;
    I_tb = 4'b1100;
    #10;
    I_tb = 4'b1101;
    #10;
    I_tb = 4'b1110;
    #10;
    I_tb = 4'b1111;
    #10;
    $finish;
end
initial
begin
    $dumpfile("voter.vcd");
    $dumpvars(0, voter_tb);
end
endmodule
