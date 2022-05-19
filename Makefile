VERILOG = iverilog
TARGET = voter.vcd
$(TARGET) : voter.vvp
	vvp voter.vvp
voter.vvp: voter_tb.v voter.v
	$(VERILOG) -o voter.vvp voter_tb.v voter.v
clean:
	-del $(TARGET)

