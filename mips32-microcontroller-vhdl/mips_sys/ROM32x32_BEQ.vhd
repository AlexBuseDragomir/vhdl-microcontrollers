----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:00:35 03/31/2018 
-- Design Name: 
-- Module Name:    ROM32x32 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM32x32 is
    Port ( 
			  Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           Data : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end ROM32x32;

architecture ROM32x32_arch of ROM32x32 is

    type tROM is array(0 to 31) of std_logic_vector(31 downto 0);
    
	 constant ROM : tROM :=      (
												x"8c02_0040", --0    lw $2, 0x40($0)  # INW0=0xAAAA_AAAB
												x"8c03_0044", --1    lw $3, 0x44($0)  # INW1=0x5555_5555
												x"0043_2020", --2    add $4, $2, $3
												x"0043_2822", --3    sub $5, $2, $3
												x"0043_3024", --4    and $6, $2, $3                        
												x"0043_3825", --5    or $7, $2, $3
												x"ac02_0048", --6    sw $2, 0x48($0)
												x"ac03_0048", --7    sw $3, 0x48($0)
												x"ac04_0048", --8    sw $4, 0x48($0)
												x"ac05_0048", --9    sw $5, 0x48($0)
												x"ac06_0048", --10   sw $6, 0x48($0)
												x"ac07_0048", --11   sw $7, 0x48($0)
												x"1043_fff3", --12   beq $2, $3, rep  # Reg $2 != Reg $3 => Jump does not happen here
												x"1000_fff2", --13   beq $0, $0, rep  # Reg $0 = Reg $0  => Jump happens here
												x"0000_0000", --14                 
												x"0000_0000", --15
												x"0000_0000", --16
												x"0000_0000", --17
												x"0000_0000", --18
												x"0000_0000", --19
												x"0000_0000", --20
												x"0000_0000", --21
												x"0000_0000", --22
												x"0000_0000", --23
												x"0000_0000", --24
												x"0000_0000", --25
												x"0000_0000", --26
												x"0000_0000", --27
												x"0000_0000", --28
												x"0000_0000", --29
												x"0000_0000", --30
												x"0000_0000"  --31   
												);  
begin

	Data <= ROM(conv_integer(Addr));
end ROM32x32_arch;




