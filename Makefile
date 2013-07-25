BIN=fft_eval
OBJ=fft_eval.o
CC=gcc -O2 -Wall -pedantic
LD=gcc
.SUFFIXES: .o .c
.c.o:
	$(CC) -c -o $@ $<

default:	all
all:	$(BIN)

$(BIN): $(OBJ)
	$(LD) -o $@ $(OBJ) -lm

clean:
	rm -rf $(BIN) $(OBJ)

