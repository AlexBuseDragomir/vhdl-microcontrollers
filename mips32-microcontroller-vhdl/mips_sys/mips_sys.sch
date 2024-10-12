VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL OUTW(31:0)
        SIGNAL Clk
        SIGNAL BTN0
        SIGNAL SWA(3:0)
        SIGNAL SWB(3:0)
        SIGNAL AN(3:0)
        SIGNAL a
        SIGNAL b
        SIGNAL c
        SIGNAL d
        SIGNAL e
        SIGNAL f
        SIGNAL g
        SIGNAL INW1(31:0)
        SIGNAL INW0(31:0)
        PORT Input Clk
        PORT Input BTN0
        PORT Input SWA(3:0)
        PORT Input SWB(3:0)
        PORT Output AN(3:0)
        PORT Output a
        PORT Output b
        PORT Output c
        PORT Output d
        PORT Output e
        PORT Output f
        PORT Output g
        BEGIN BLOCKDEF mips
            TIMESTAMP 2018 5 8 7 37 20
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF iface_s3
            TIMESTAMP 2013 12 7 18 41 20
            RECTANGLE N 64 -64 400 512 
            RECTANGLE N 0 388 64 412 
            LINE N 0 400 64 400 
            RECTANGLE N 0 468 64 492 
            LINE N 0 480 64 480 
            RECTANGLE N 400 468 464 492 
            LINE N 464 480 400 480 
            LINE N 0 320 64 320 
            RECTANGLE N 400 244 464 268 
            LINE N 464 256 400 256 
            RECTANGLE N 400 308 464 332 
            LINE N 464 320 400 320 
            LINE N 464 128 400 128 
            LINE N 464 192 400 192 
            RECTANGLE N 0 -44 64 -20 
            LINE N 0 -32 64 -32 
            LINE N 0 272 64 272 
            LINE N 0 224 64 224 
            LINE N 0 176 64 176 
            LINE N 0 128 64 128 
            LINE N 0 80 64 80 
            LINE N 0 32 64 32 
            BEGIN LINE N 72 364 396 364 
                LINESTYLE Dash
            END LINE
        END BLOCKDEF
        BEGIN BLOCK u_mips mips
            PIN Clk Clk
            PIN INW1(31:0) INW1(31:0)
            PIN INW0(31:0) INW0(31:0)
            PIN OUTW0(31:0) OUTW(31:0)
        END BLOCK
        BEGIN BLOCK u_iface iface_s3
            PIN INW1(31:0) INW1(31:0)
            PIN INW0(31:0) INW0(31:0)
            PIN OUTW0(31:0) OUTW(31:0)
            PIN g g
            PIN SWB(3:0) SWB(3:0)
            PIN SWA(3:0) SWA(3:0)
            PIN BTN0 BTN0
            PIN Clk Clk
            PIN AN(3:0) AN(3:0)
            PIN f f
            PIN e e
            PIN d d
            PIN c c
            PIN b b
            PIN a a
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE u_iface 1376 720 R0
            BEGIN DISPLAY 112 -136 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE u_mips 1408 1648 R0
            BEGIN DISPLAY 144 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 1280 1488 1344 1488
            WIRE 1344 1488 1408 1488
            BEGIN DISPLAY 1344 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OUTW(31:0)
            WIRE 1792 1488 1936 1488
            WIRE 1840 1200 1936 1200
            WIRE 1936 1200 1936 1360
            WIRE 1936 1360 1936 1488
            BEGIN DISPLAY 1936 1360 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 1840 848 1872 848
        END BRANCH
        IOMARKER 1872 848 Clk R0 28
        BEGIN BRANCH BTN0
            WIRE 1840 912 1872 912
        END BRANCH
        IOMARKER 1872 912 BTN0 R0 28
        BEGIN BRANCH SWA(3:0)
            WIRE 1840 976 1872 976
        END BRANCH
        IOMARKER 1872 976 SWA(3:0) R0 28
        BEGIN BRANCH SWB(3:0)
            WIRE 1840 1040 1872 1040
        END BRANCH
        IOMARKER 1872 1040 SWB(3:0) R0 28
        BEGIN BRANCH AN(3:0)
            WIRE 1344 688 1376 688
        END BRANCH
        IOMARKER 1344 688 AN(3:0) R180 28
        BEGIN BRANCH a
            WIRE 1344 752 1376 752
        END BRANCH
        IOMARKER 1344 752 a R180 28
        BEGIN BRANCH b
            WIRE 1344 800 1376 800
        END BRANCH
        IOMARKER 1344 800 b R180 28
        BEGIN BRANCH c
            WIRE 1344 848 1376 848
        END BRANCH
        IOMARKER 1344 848 c R180 28
        BEGIN BRANCH d
            WIRE 1344 896 1376 896
        END BRANCH
        IOMARKER 1344 896 d R180 28
        BEGIN BRANCH e
            WIRE 1344 944 1376 944
        END BRANCH
        IOMARKER 1344 944 e R180 28
        BEGIN BRANCH f
            WIRE 1344 992 1376 992
        END BRANCH
        IOMARKER 1344 992 f R180 28
        BEGIN BRANCH g
            WIRE 1344 1040 1376 1040
        END BRANCH
        IOMARKER 1344 1040 g R180 28
        BEGIN BRANCH INW1(31:0)
            WIRE 1184 1120 1376 1120
            WIRE 1184 1120 1184 1360
            WIRE 1184 1360 1184 1552
            WIRE 1184 1552 1408 1552
            BEGIN DISPLAY 1184 1360 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(31:0)
            WIRE 992 1200 1376 1200
            WIRE 992 1200 992 1424
            WIRE 992 1424 992 1616
            WIRE 992 1616 1408 1616
            BEGIN DISPLAY 992 1424 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
