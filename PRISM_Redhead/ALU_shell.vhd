-------------------------------------------------------------------------------
--
-- Title       : ALU
-- Design      : ALU
-- Author      : usafa-Ryan Redhead
-- Company     : usafa
--
-------------------------------------------------------------------------------
--
-- File        : ALU.vhd
-- Generated   : Fri Mar 30 11:16:54 2007
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {ALU} architecture {ALU}}

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
	 port(
		 OpSel : in STD_LOGIC_VECTOR(2 downto 0);
		 Data : in STD_LOGIC_VECTOR(3 downto 0);
		 Accumulator : in STD_LOGIC_VECTOR(3 downto 0);
		 Result : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end ALU;

--}} End of automatically maintained section

architecture ALU of ALU is	   


begin
	
-- fill in details to create result as a function of Data and Accumulator, based on OpSel.
 -- e.g : Build a multiplexer choosing between the eight ALU operations.  Either use a case statement (and thus a process)
 --       or a conditional signal assignment statement ( x <= Y when <condition> else . . .)
 -- ALU Operations are defined as:
 -- OpSel : Function
--  0     : AND
--  1     : NEG (2s complement)
--  2     : NOT (invert)
--  3     : ROR
--  4     : OR
--  5     : IN
--  6     : ADD
--  7     : LD
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

-- OR, enter your conditional signal statement here

end ALU;

