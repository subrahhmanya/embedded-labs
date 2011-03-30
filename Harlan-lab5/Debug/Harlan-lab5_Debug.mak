SHELL = cmd.exe

#
# ZDS II Make File - Harlan-lab5 project, Debug configuration
#
# Generated by: ZDS II - ZNEO 4.11.1 (Build 08081801)
#   IDE component: c:4.11:08081801
#   Install Path: C:\Program Files (x86)\ZiLOG\ZDSII_ZNEO_4.11.1\
#

RM = del

ZDS = C:\PROGRA~2\ZiLOG\ZDSII_~1.1
BIN = $(ZDS)\bin
# ZDS include base directory
INCLUDE = C:\PROGRA~2\ZiLOG\ZDSII_~1.1\include
# intermediate files directory
WORKDIR = C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\Debug

CC = @$(BIN)\zneocc
AS = @$(BIN)\zneoasm
LD = @$(BIN)\zneolink
AR = @$(BIN)\zneolib

CFLAGS =  \
-chartype:U -define:_Z16F2811FI -define:_Z16F_SERIES -genprintf  \
-NOkeepasm -keeplst -NOlist -NOlistinc -model:S -NOmodsect  \
-stdinc:"C:\PROGRA~2\ZiLOG\ZDSII_~1.1\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.1\include\zilog"  \
-usrinc:"..\include" -NOregvar -reduceopt -warn -debug  \
-cpu:Z16F2811FI  \
-asmsw:" -cpu:Z16F2811FI -define:_Z16F2811FI=1 -define:_Z16F_SERIES=1 -include:C:\PROGRA~2\ZiLOG\ZDSII_~1.1\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.1\include\zilog"

ASFLAGS =  \
-define:_Z16F2811FI=1 -define:_Z16F_SERIES=1  \
-include:"C:\PROGRA~2\ZiLOG\ZDSII_~1.1\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.1\include\zilog"  \
-list -NOlistmac -name -pagelen:56 -pagewidth:80 -quiet -warn  \
-debug -NOigcase -cpu:Z16F2811FI

LDFLAGS = @.\Harlan-lab5_Debug.linkcmd
OUTDIR = C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\Debug

build: Harlan-lab5

buildall: clean Harlan-lab5

relink: deltarget Harlan-lab5

deltarget: 
	@if exist $(WORKDIR)\Harlan-lab5.lod  \
            $(RM) $(WORKDIR)\Harlan-lab5.lod
	@if exist $(WORKDIR)\Harlan-lab5.hex  \
            $(RM) $(WORKDIR)\Harlan-lab5.hex
	@if exist $(WORKDIR)\Harlan-lab5.map  \
            $(RM) $(WORKDIR)\Harlan-lab5.map

clean: 
	@if exist $(WORKDIR)\Harlan-lab5.lod  \
            $(RM) $(WORKDIR)\Harlan-lab5.lod
	@if exist $(WORKDIR)\Harlan-lab5.hex  \
            $(RM) $(WORKDIR)\Harlan-lab5.hex
	@if exist $(WORKDIR)\Harlan-lab5.map  \
            $(RM) $(WORKDIR)\Harlan-lab5.map
	@if exist $(WORKDIR)\buttons.obj  \
            $(RM) $(WORKDIR)\buttons.obj
	@if exist $(WORKDIR)\cli.obj  \
            $(RM) $(WORKDIR)\cli.obj
	@if exist $(WORKDIR)\i2c.obj  \
            $(RM) $(WORKDIR)\i2c.obj
	@if exist $(WORKDIR)\info.obj  \
            $(RM) $(WORKDIR)\info.obj
	@if exist $(WORKDIR)\LED.obj  \
            $(RM) $(WORKDIR)\LED.obj
	@if exist $(WORKDIR)\macro.obj  \
            $(RM) $(WORKDIR)\macro.obj
	@if exist $(WORKDIR)\main.obj  \
            $(RM) $(WORKDIR)\main.obj
	@if exist $(WORKDIR)\oscillator.obj  \
            $(RM) $(WORKDIR)\oscillator.obj
	@if exist $(WORKDIR)\ports.obj  \
            $(RM) $(WORKDIR)\ports.obj
	@if exist $(WORKDIR)\timer.obj  \
            $(RM) $(WORKDIR)\timer.obj
	@if exist $(WORKDIR)\uart.obj  \
            $(RM) $(WORKDIR)\uart.obj
	@if exist $(WORKDIR)\24lc16b.obj  \
            $(RM) $(WORKDIR)\24lc16b.obj
	@if exist $(WORKDIR)\25lc040a.obj  \
            $(RM) $(WORKDIR)\25lc040a.obj
	@if exist $(WORKDIR)\spi.obj  \
            $(RM) $(WORKDIR)\spi.obj
	@if exist $(WORKDIR)\delay.obj  \
            $(RM) $(WORKDIR)\delay.obj

# pre-4.11.0 compatibility
rebuildall: buildall 

LIBS = 

OBJS =  \
            $(WORKDIR)\buttons.obj  \
            $(WORKDIR)\cli.obj  \
            $(WORKDIR)\i2c.obj  \
            $(WORKDIR)\info.obj  \
            $(WORKDIR)\LED.obj  \
            $(WORKDIR)\macro.obj  \
            $(WORKDIR)\main.obj  \
            $(WORKDIR)\oscillator.obj  \
            $(WORKDIR)\ports.obj  \
            $(WORKDIR)\timer.obj  \
            $(WORKDIR)\uart.obj  \
            $(WORKDIR)\24lc16b.obj  \
            $(WORKDIR)\25lc040a.obj  \
            $(WORKDIR)\spi.obj  \
            $(WORKDIR)\delay.obj

Harlan-lab5: $(OBJS)
	 $(LD) $(LDFLAGS)

$(WORKDIR)\buttons.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\buttons.c  \
            $(INCLUDE)\zilog\zneo.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\buttons.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\macro.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\timer.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\buttons.c

$(WORKDIR)\cli.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\cli.c  \
            $(INCLUDE)\std\CTYPE.H  \
            $(INCLUDE)\std\STDLIB.H  \
            $(INCLUDE)\std\STRING.H  \
            $(INCLUDE)\zilog\Zconst.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\24lc16b.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\25lc040a.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\LED.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\cli.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\info.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\macro.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\ports.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\timer.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\uart.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\cli.c

$(WORKDIR)\i2c.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\i2c.c  \
            $(INCLUDE)\std\STDARG.H  \
            $(INCLUDE)\std\STDLIB.H  \
            $(INCLUDE)\zilog\Zconst.h  \
            $(INCLUDE)\zilog\zneo.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\i2c.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\uart.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\i2c.c

$(WORKDIR)\info.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\info.c  \
            $(INCLUDE)\std\STRING.H  \
            $(INCLUDE)\zilog\Zconst.h  \
            $(INCLUDE)\zilog\zneo.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\info.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\oscillator.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\uart.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\info.c

$(WORKDIR)\LED.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\LED.c  \
            $(INCLUDE)\std\STDARG.H  \
            $(INCLUDE)\zilog\zneo.h  \
            $(INCLUDE)\std\STDARG.H  \
            $(INCLUDE)\std\STDIO.H  \
            $(INCLUDE)\std\STDLIB.H  \
            $(INCLUDE)\std\STRING.H  \
            $(INCLUDE)\zilog\FORMAT.H  \
            $(INCLUDE)\zilog\Zconst.h  \
            $(INCLUDE)\zilog\zneo.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\LED.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\LED_ascii.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\timer.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\LED.c

$(WORKDIR)\macro.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\macro.c  \
            $(INCLUDE)\std\STDLIB.H  \
            $(INCLUDE)\std\STRING.H  \
            $(INCLUDE)\zilog\Zconst.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\macro.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\uart.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\macro.c

$(WORKDIR)\main.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\main.c  \
            $(INCLUDE)\std\STDARG.H  \
            $(INCLUDE)\zilog\zneo.h  \
            $(INCLUDE)\std\STDARG.H  \
            $(INCLUDE)\std\STDIO.H  \
            $(INCLUDE)\zilog\FORMAT.H  \
            $(INCLUDE)\zilog\Zconst.h  \
            $(INCLUDE)\zilog\zneo.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\LED.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\buttons.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\cli.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\macro.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\oscillator.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\timer.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\main.c

$(WORKDIR)\oscillator.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\oscillator.c  \
            $(INCLUDE)\zilog\zneo.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\oscillator.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\uart.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\oscillator.c

$(WORKDIR)\ports.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\ports.c  \
            $(INCLUDE)\std\STRING.H  \
            $(INCLUDE)\zilog\Zconst.h  \
            $(INCLUDE)\zilog\zneo.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\ports.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\uart.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\ports.c

$(WORKDIR)\timer.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\timer.c  \
            $(INCLUDE)\std\STRING.H  \
            $(INCLUDE)\zilog\Zconst.h  \
            $(INCLUDE)\zilog\zneo.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\LED.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\buttons.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\oscillator.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\timer.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\uart.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\timer.c

$(WORKDIR)\uart.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\uart.c  \
            $(INCLUDE)\std\STDARG.H  \
            $(INCLUDE)\zilog\zneo.h  \
            $(INCLUDE)\std\STDARG.H  \
            $(INCLUDE)\std\STDIO.H  \
            $(INCLUDE)\std\STRING.H  \
            $(INCLUDE)\zilog\FORMAT.H  \
            $(INCLUDE)\zilog\Zconst.h  \
            $(INCLUDE)\zilog\zneo.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\uart.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\uart.c

$(WORKDIR)\24lc16b.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\24lc16b.c  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\24lc16b.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\delay.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\i2c.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\uart.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\24lc16b.c

$(WORKDIR)\25lc040a.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\25lc040a.c  \
            $(INCLUDE)\zilog\zneo.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\delay.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\spi.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\uart.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\25lc040a.c

$(WORKDIR)\spi.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\spi.c  \
            $(INCLUDE)\std\STDLIB.H  \
            $(INCLUDE)\zilog\Zconst.h  \
            $(INCLUDE)\zilog\zneo.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\oscillator.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\spi.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\spi.c

$(WORKDIR)\delay.obj :  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\delay.c  \
            $(INCLUDE)\zilog\zneo.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\delay.h  \
            C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\include\oscillator.h
	 $(CC) $(CFLAGS) C:\Users\Matt\Documents\CSCI-4415-labs\Harlan-lab5\delay.c

