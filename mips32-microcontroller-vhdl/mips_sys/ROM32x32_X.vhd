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
												x"8c02_0040", --0    rep:    		lw  $2, 0x40($0)
												x"8c03_0044", --1    				lw  $3, 0x44($0)
												x"0043_2022", --2    				sub $4, $2, $3
												x"1062_0001", --3    				beq $3, $2, display
												x"0043_2020", --4    				add $4, $2, $3
												x"ac04_0048", --5    display: 	sw  $4, 0x48($0)
												x"1000_fff9", --6    				beq $0, $0, rep
												x"0000_0000", --7    
												x"0000_0000", --8    
												x"0000_0000", --9    
												x"0000_0000", --10   
												x"0000_0000", --11   
												x"0000_0000", --12   
												x"0000_0000", --13   
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




