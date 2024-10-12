VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Instr(31:0)
        SIGNAL New_PC(31:0)
        SIGNAL Clk
        SIGNAL RegDest
        SIGNAL Instr(15:11)
        SIGNAL Instr(20:16)
        SIGNAL WrReg(4:0)
        SIGNAL RegWr
        SIGNAL RdData1(31:0)
        SIGNAL RdData2(31:0)
        SIGNAL ALUSrc
        SIGNAL ALUOP(1:0)
        SIGNAL Instr(15:0)
        SIGNAL ALU_Out(31:0)
        SIGNAL MemOut(31:0)
        SIGNAL Mem2Reg
        SIGNAL MemWr
        SIGNAL INW1(31:0)
        SIGNAL INW0(31:0)
        SIGNAL OUTW0(31:0)
        SIGNAL ALU_Out(6:2)
        SIGNAL Wr_Data(31:0)
        SIGNAL Instr(31:26)
        SIGNAL Instr(5:0)
        SIGNAL Zero
        SIGNAL PC(31:0)
        SIGNAL Branch
        SIGNAL Instr(25:21)
        SIGNAL PC(6:2)
        PORT Input Clk
        PORT Input INW1(31:0)
        PORT Input INW0(31:0)
        PORT Output OUTW0(31:0)
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2018 5 21 6 11 21
            RECTANGLE N 48 -172 112 -148 
            LINE N 48 -160 112 -160 
            RECTANGLE N 112 -204 416 180 
            LINE N 416 -160 480 -160 
            RECTANGLE N 416 100 480 124 
            LINE N 480 112 416 112 
            LINE N 480 -64 416 -64 
            RECTANGLE N 416 20 480 44 
            LINE N 480 32 416 32 
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2018 3 31 13 55 50
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x32
            TIMESTAMP 2018 3 31 17 48 22
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V5
            TIMESTAMP 2018 4 1 6 58 29
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2018 5 21 4 50 13
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 64 -320 320 64 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2011 12 4 15 25 46
            RECTANGLE N 0 68 64 92 
            LINE N 64 80 0 80 
            RECTANGLE N 0 132 64 156 
            LINE N 64 144 0 144 
            RECTANGLE N 384 132 448 156 
            LINE N 384 144 448 144 
            LINE N 64 16 0 16 
            RECTANGLE N 64 -240 384 188 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            RECTANGLE N 384 -156 448 -132 
            LINE N 384 -144 448 -144 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V32
            TIMESTAMP 2018 4 15 4 49 57
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2018 4 15 5 24 14
            RECTANGLE N 64 -608 400 12 
            RECTANGLE N 400 -508 464 -484 
            LINE N 400 -496 464 -496 
            RECTANGLE N 400 -572 464 -548 
            LINE N 400 -560 464 -560 
            RECTANGLE N 0 -380 64 -356 
            LINE N 64 -368 0 -368 
            RECTANGLE N 0 -60 64 -36 
            LINE N 64 -48 0 -48 
            LINE N 64 -496 0 -496 
            LINE N 64 -560 0 -560 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -316 64 -292 
            LINE N 64 -304 0 -304 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2018 5 21 5 3 51
            LINE N 352 32 416 32 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 352 -352 416 -352 
            LINE N 352 -288 416 -288 
            LINE N 352 -224 416 -224 
            LINE N 352 -160 416 -160 
            LINE N 352 -96 416 -96 
            RECTANGLE N 352 -44 416 -20 
            LINE N 352 -32 416 -32 
            RECTANGLE N 64 -384 352 64 
        END BLOCKDEF
        BEGIN BLOCK U_New_Pc PC_Update
            PIN New_PC(31:0) New_PC(31:0)
            PIN Zero Zero
            PIN PC(31:0) PC(31:0)
            PIN Branch Branch
            PIN Offset(15:0) Instr(15:0)
        END BLOCK
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(31:0) New_PC(31:0)
            PIN PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_MUXRegD MUX2V5
            PIN Y(4:0) WrReg(4:0)
            PIN I0(4:0) Instr(20:16)
            PIN I1(4:0) Instr(15:11)
            PIN Sel RegDest
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN ALUSrc ALUSrc
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN FAddr(15:0) Instr(15:0)
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Y(31:0) ALU_Out(31:0)
            PIN Zero Zero
        END BLOCK
        BEGIN BLOCK U_MuxData MUX2V32
            PIN Sel Mem2Reg
            PIN Y(31:0) Wr_Data(31:0)
            PIN I1(31:0) MemOut(31:0)
            PIN I0(31:0) ALU_Out(31:0)
        END BLOCK
        BEGIN BLOCK U_DataMem DataMem
            PIN Wr MemWr
            PIN Addr(4:0) ALU_Out(6:2)
            PIN DataIn(31:0) RdData2(31:0)
            PIN DataOut(31:0) MemOut(31:0)
            PIN Clk Clk
            PIN INW0(31:0) INW0(31:0)
            PIN OUTW0(31:0) OUTW0(31:0)
            PIN INW1(31:0) INW1(31:0)
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN RdData2(31:0) RdData2(31:0)
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdReg1(4:0) Instr(25:21)
            PIN WrData(31:0) Wr_Data(31:0)
            PIN WrEn RegWr
            PIN Clk Clk
            PIN WrReg(4:0) WrReg(4:0)
            PIN RdReg2(4:0) Instr(20:16)
        END BLOCK
        BEGIN BLOCK U_Ctrl ctrl
            PIN OP(5:0) Instr(31:26)
            PIN Funct(5:0) Instr(5:0)
            PIN ALUSrc ALUSrc
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Branch Branch
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x32
            PIN Addr(4:0) PC(6:2)
            PIN Data(31:0) Instr(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BUSTAP 1392 1600 1488 1600
        BUSTAP 1392 1392 1488 1392
        BEGIN INSTANCE U_New_Pc 112 944 R0
            BEGIN DISPLAY 112 -292 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH New_PC(31:0)
            WIRE 32 784 32 1008
            WIRE 32 1008 32 1408
            WIRE 32 1408 208 1408
            WIRE 32 784 160 784
            BEGIN DISPLAY 32 1008 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 192 1344 208 1344
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 1504 1664 1584 1664
            WIRE 1584 1664 1696 1664
            BEGIN DISPLAY 1584 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(15:11)
            WIRE 1488 1600 1584 1600
            WIRE 1584 1600 1696 1600
            BEGIN DISPLAY 1584 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(20:16)
            WIRE 1488 1392 1552 1392
            WIRE 1552 1392 1552 1536
            WIRE 1552 1536 1696 1536
            WIRE 1552 1392 2176 1392
            WIRE 2176 1392 2384 1392
            BEGIN DISPLAY 2176 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUXRegD 1696 1696 R0
            BEGIN DISPLAY 96 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH WrReg(4:0)
            WIRE 2080 1536 2176 1536
            WIRE 2176 1536 2384 1536
            BEGIN DISPLAY 2176 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 2144 1136 2208 1136
            WIRE 2208 1136 2384 1136
            BEGIN DISPLAY 2208 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2144 1200 2208 1200
            WIRE 2208 1200 2384 1200
            BEGIN DISPLAY 2208 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData1(31:0)
            WIRE 2848 1136 2976 1136
            WIRE 2976 1136 3344 1136
            BEGIN DISPLAY 2976 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData2(31:0)
            WIRE 2848 1200 2976 1200
            WIRE 2976 1200 3024 1200
            WIRE 3024 1200 3344 1200
            WIRE 3024 1200 3024 1520
            WIRE 3024 1520 3920 1520
            WIRE 3920 1408 4032 1408
            WIRE 3920 1408 3920 1520
            BEGIN DISPLAY 2976 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ALU 3344 1424 R0
            BEGIN DISPLAY 128 -408 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH ALUSrc
            WIRE 3088 1392 3184 1392
            WIRE 3184 1392 3344 1392
            BEGIN DISPLAY 3184 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 3088 1328 3216 1328
            WIRE 3216 1328 3344 1328
            BEGIN DISPLAY 3216 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(15:0)
            WIRE 1488 1824 1984 1824
            WIRE 1984 1824 2912 1824
            WIRE 2912 1264 3344 1264
            WIRE 2912 1264 2912 1824
            BEGIN DISPLAY 1984 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1392 1824 1488 1824
        BEGIN BRANCH ALU_Out(31:0)
            WIRE 3728 1264 3728 1328
            WIRE 3728 1264 3824 1264
            WIRE 3824 1264 3824 1344
            WIRE 3824 1344 3824 1616
            WIRE 3824 1616 4256 1616
            WIRE 4256 1616 4672 1616
            WIRE 4672 1472 4880 1472
            WIRE 4672 1472 4672 1616
            BEGIN DISPLAY 4256 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemOut(31:0)
            WIRE 4480 1408 4688 1408
            WIRE 4688 1408 4880 1408
            BEGIN DISPLAY 4688 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 4704 1344 4816 1344
            WIRE 4816 1344 4880 1344
            BEGIN DISPLAY 4816 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 3888 1280 3968 1280
            WIRE 3968 1280 4032 1280
            BEGIN DISPLAY 3968 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW1(31:0)
            WIRE 4000 1184 4032 1184
        END BRANCH
        BEGIN BRANCH INW0(31:0)
            WIRE 4000 1120 4032 1120
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 3904 1056 3984 1056
            WIRE 3984 1056 4032 1056
            BEGIN DISPLAY 3984 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_DataMem 4032 1264 R0
            BEGIN DISPLAY 112 -316 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH OUTW0(31:0)
            WIRE 4480 1120 4512 1120
        END BRANCH
        IOMARKER 4000 1120 INW0(31:0) R180 28
        IOMARKER 4000 1184 INW1(31:0) R180 28
        IOMARKER 4512 1120 OUTW0(31:0) R0 28
        BEGIN INSTANCE U_MuxData 4880 1504 R0
            BEGIN DISPLAY 64 -280 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 3824 1344 3920 1344
        BEGIN BRANCH ALU_Out(6:2)
            WIRE 3920 1344 3952 1344
            WIRE 3952 1344 4032 1344
            BEGIN DISPLAY 3952 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Wr_Data(31:0)
            WIRE 2320 1648 2320 1744
            WIRE 2320 1744 3952 1744
            WIRE 3952 1744 5344 1744
            WIRE 2320 1648 2384 1648
            WIRE 5264 1344 5344 1344
            WIRE 5344 1344 5344 1744
            BEGIN DISPLAY 3952 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Regs 2384 1696 R0
            BEGIN DISPLAY 112 -732 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1392 2016 1488 2016
        BEGIN BRANCH Instr(31:26)
            WIRE 1488 2016 1568 2016
            WIRE 1568 2016 1744 2016
            BEGIN DISPLAY 1568 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Ctrl 1744 2368 R0
            BEGIN DISPLAY 128 88 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1392 2336 1488 2336
        BEGIN BRANCH Instr(5:0)
            WIRE 1488 2336 1552 2336
            WIRE 1552 2336 1744 2336
            BEGIN DISPLAY 1552 2336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 2160 2016 2224 2016
            WIRE 2224 2016 2336 2016
            BEGIN DISPLAY 2224 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 2160 2080 2224 2080
            WIRE 2224 2080 2336 2080
            BEGIN DISPLAY 2224 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2160 2144 2240 2144
            WIRE 2240 2144 2336 2144
            BEGIN DISPLAY 2240 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2160 2208 2240 2208
            WIRE 2240 2208 2336 2208
            BEGIN DISPLAY 2240 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2160 2272 2240 2272
            WIRE 2240 2272 2336 2272
            BEGIN DISPLAY 2240 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 2160 2336 2256 2336
            WIRE 2256 2336 2336 2336
            BEGIN DISPLAY 2256 2336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 192 1344 Clk R180 28
        BEGIN BRANCH Zero
            WIRE 592 784 2080 784
            WIRE 2080 784 3760 784
            WIRE 3760 784 3760 1136
            WIRE 3728 1136 3760 1136
            BEGIN DISPLAY 2080 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 2160 2400 2240 2400
            WIRE 2240 2400 2336 2400
            BEGIN DISPLAY 2240 2400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(31:0)
            WIRE 976 1936 976 2208
            WIRE 976 2208 976 2416
            WIRE 976 2416 1392 2416
            WIRE 1392 912 1392 976
            WIRE 1392 976 1392 1328
            WIRE 1392 1328 1392 1392
            WIRE 1392 1392 1392 1600
            WIRE 1392 1600 1392 1824
            WIRE 1392 1824 1392 2016
            WIRE 1392 2016 1392 2336
            WIRE 1392 2336 1392 2416
            BEGIN DISPLAY 976 2208 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1392 1328 1488 1328
        BEGIN BRANCH Instr(25:21)
            WIRE 1488 1328 2176 1328
            WIRE 2176 1328 2384 1328
            BEGIN DISPLAY 2176 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1392 976 1296 976
        BEGIN BRANCH Instr(15:0)
            WIRE 592 976 960 976
            WIRE 960 976 1296 976
            BEGIN DISPLAY 960 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ROM 944 1552 R90
            BEGIN DISPLAY 48 -152 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH PC(31:0)
            WIRE 592 1056 704 1056
            WIRE 704 1056 704 1184
            WIRE 704 1184 704 1344
            WIRE 704 1344 704 1440
            WIRE 704 1440 704 1536
            WIRE 592 1344 704 1344
            BEGIN DISPLAY 704 1184 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 704 1440 800 1440
        BEGIN BRANCH PC(6:2)
            WIRE 800 1440 880 1440
            WIRE 880 1440 976 1440
            WIRE 976 1440 976 1552
            BEGIN DISPLAY 880 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_PC 208 1440 R0
            BEGIN DISPLAY 96 -216 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Branch
            WIRE 592 880 672 880
            WIRE 672 880 768 880
            BEGIN DISPLAY 672 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
