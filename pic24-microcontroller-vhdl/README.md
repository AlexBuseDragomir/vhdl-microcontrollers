# PIC24 Microcontroller designed using VHDL

This document describes a PIC24 microcontroller designed using VHDL, detailing the signals used and the roles of the different blocks.

## Signals

1.  **ALUOP:** 2-bit signal specifying the ALU operation.
2.  **Branch:** High if a branch instruction (conditional or unconditional) is executed.
3.  **ZEn:** Enables updating the Zero flag.
4.  **WrReg:**  Address of the register to be written.
5.  **Mem2Reg:** Selects between ALU output or memory data for register write.
6.  **ZData:** Current value of the Zero flag.
7.  **PC:** Program Counter, points to the next instruction in ROM.
8.  **SWA/SWB:** Least significant 4 bits of INW0 and INW1.
9.  **BrType:**  Indicates unconditional (1) or conditional (0) branch.
10. **RdData1/RdData2:**  Operands read from registers for ALU operations.
11. **Clk:** Clock signal for synchronization.
12. **Z:** Zero flag.
13. **New_Z:** Updated value of the Zero flag.
14. **Instr:** Binary representation of the current instruction from ROM.
15. **RegDest:**  Selects destination register (Ws or Wd).
16. **MemWr:** Enables writing to data memory.
17. **RegWr:** Enables writing to a register.
18. **INW0/INW1:** Read-only data input markers for RAM.
19. **OUTW0:** Write-only data output marker for RAM.
20. **NegFlag:**  Signals ALU to negate the second operand (Ws).

## Blocks

1.  **ALU:** Performs arithmetic and logical operations based on ALUOP. Sets the Zero flag if the result is zero.  Handles operand negation for `NEG Ws, Wd` instruction.
2.  **ProgCnt:**  Registers the value from PC_Update on the rising clock edge.
3.  **PC_Update:**  Calculates the next PC value (increment or branch).
4.  **CTRL:**  Decodes the instruction and generates control signals.
5.  **ROM32x24:**  Read-only memory storing the program instructions (32 words x 24 bits).
6.  **MUX2V4:**  Selects the destination register address (Ws or Wd).
7.  **DataMem:**  RAM with 16 locations (16 bits each), two read-only locations (INW0, INW1), and one write-only location (OUTW0).
8.  **File_Regs:**  Register file; handles reading and writing register data.
9.  **MUX2V16:**  Selects data source for register write (ALU output or memory data).
10. **Z_Update:**  Updates the Zero flag based on ZEn.
