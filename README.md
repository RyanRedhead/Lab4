Lab 4
===========

#Design
##ALU Modifications
The PRISM has the following functions AND, NEG, NOT, ROR, OR, IN, ADD, and LDA. In the ALU the OpSel controls which function is being selected, 0 for AND, 1 for NEG and so on.
```vhdl
aluswitch: process (Accumulator, Data, OpSel)
        begin
		-- enter your if/then/else or case statements here
if (Opsel = "000") then
Result <= Accumulator and Data;
--AND the accumulator and data
elsif (OpSel = "001") then
Result <= not Accumulator + "0001";
--2's complement of the number
elsif (OpSel = "010") then
Result <= not Accumulator;
--NOT the number
elsif (OpSel = "011") then
Result(3) <= Accumulator(2);
Result(2) <= Accumulator(1);
Result(1) <= Accumulator(0);
Result(0) <= Accumulator(3);
--ROR the accumulator numbers
elsif (OpSel = "100") then
Result <= Accumulator OR Data;
elsif (OpSel = "101") then
Result <= Data;
elsif (OpSel = "110") then
Result <= Accumulator + Data;
elsif (OpSel = "111") then
Result <= Data;
end if;
end process aluswitch;
```
##ALU Test and Debug
![Alt Text](https://github.com/RyanRedhead/Lab4/blob/master/ALUTestbench.PNG?raw=true)

The ALU operations match the desired results and there was no debugging required.
##Datapath Modifications
The datapath is made up of multiple registers,the program counter, the instruction register, the memory address register (hi and lo), the address selector (mux), and an accumulator. All of the registers work together in the picture below of the PRISM's datapath.
![Alt Text](https://github.com/RyanRedhead/Lab4/blob/master/Datapath.PNG?raw=true)
##Datapath Test and Debug
![Alt Text](https://github.com/RyanRedhead/Lab4/blob/master/DatapathSimulation700ns.PNG?raw=true)

The Datapath had desired results and no debugging was required.
##Testbench Operation
The testbench had an extra semicolon and comma that needed to be removed.
#Functionality
ALU Simulation-Check
Datapath Simulation-Check
#Reverse Engineering
##Simulation Analysis
50ns to 100ns:
![Alt Text](https://github.com/RyanRedhead/Lab4/blob/master/50nsto100ns.PNG?raw=true)

At 50ns the instruction register is reading 7/LDAI. A 3 is also shown on the data bus. 3 is the OpCode for ROR, so the accumulator would rotate the values to the right. The next command is reading a 4/OUT. Since the data bus has a 3 on it, the accumulator would hsow the value 3.

Jump at 225ns:
![Alt Text](https://github.com/RyanRedhead/Lab4/blob/master/Jump225ns.PNG?raw=true)

The instruction register is reading an 11 or B in hex which is the Jump command. MarLo and MarHi give the address for the program to jump to which is a 2 then 0 respectively. The address then shows 02 which means the jump worked.
##PRISM Program Listing
#Documentation
None
