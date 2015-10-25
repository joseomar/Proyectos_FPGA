VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL D
        SIGNAL clk
        SIGNAL Q
        PORT Input D
        PORT Input clk
        PORT Output Q
        BEGIN BLOCKDEF fd_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd_1
            PIN C clk
            PIN D D
            PIN Q Q
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1664 1424 R0
        BEGIN BRANCH D
            WIRE 1632 1168 1664 1168
        END BRANCH
        IOMARKER 1632 1168 D R180 28
        BEGIN BRANCH clk
            WIRE 1632 1296 1664 1296
        END BRANCH
        IOMARKER 1632 1296 clk R180 28
        BEGIN BRANCH Q
            WIRE 2048 1168 2080 1168
        END BRANCH
        IOMARKER 2080 1168 Q R0 28
    END SHEET
END SCHEMATIC
