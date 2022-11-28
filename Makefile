AS=nasm
ASFLAGS=-f macho64
LD=ld
LDFLAGS=

LIBS = \
	-L/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/lib \
	-lSystem

SCRATCH=scratch

SRC=$(wildcard *.asm)
OBJ=$(SRC:.asm=.o)

.PHONY: all clean

all: $(SCRATCH)

$(SCRATCH): $(OBJ)
	$(LD) $(LDFLAGS) $(LIBS) -o $(SCRATCH) $(OBJ)

%.o: %.asm Makefile
	$(AS) $(ASFLAGS) $< -o $@

clean:
	$(RM) $(SCRATCH) $(OBJ)
