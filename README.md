Lab 4
===========

#Design
##ALU Modifications
The PRISM has the following functions AND, NEG, NOT, ROR, OR, IN, ADD, and LDA. In the ALU the OpSel controls which function is being selected, 0 for AND, 1 for NEG and so on.
##ALU Test and Debug
![Alt Text](https://github.com/RyanRedhead/Lab4/blob/master/ALUTestbench.PNG?raw=true)

The ALU operations match the desired results and there was no debugging required.
##Datapath Modifications
The datapath is made up of multiple registers,the program counter, the instruction register, the memory address register (hi and lo), the address selector (mux), and an accumulator. All of the registers work together in the picture below of the PRISM's datapath.
![Alt Text](https://github.com/RyanRedhead/Lab4/blob/master/Datapath.PNG?raw=true)
##Datapath Test and Debug
![Alt Text](?raw=true)

The Datapath had desired results and no debugging was required.
##Testbench Operation
#Functionality
ALU Simulation-Check
Datapath Simulation-Check
#Reverse Engineering
##Simulation Analysis
##PRISM Program Listing
#Documentation
None
