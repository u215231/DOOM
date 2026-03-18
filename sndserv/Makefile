##########################################################
#
# $Id:$
#
# $Log:$
#
#

# Marc: added compilation flag -m32 of 32-bit architecture.
CC=gcc -m32

# Marc: added -DMARC flag for code review.
CFLAGS=-O -DNORMALUNIX -DLINUX -DMARC 
LDFLAGS=
LIBS=-lm

O=linux

all:	 $(O)/sndserver

clean:
	rm -f *.o *~ *.flc
	rm -f linux/*

# Target
$(O)/sndserver: \
	$(O)/soundsrv.o \
	$(O)/sounds.o \
	$(O)/wadread.o \
	$(O)/linux.o
	$(CC) $(CFLAGS) $(LDFLAGS) \
	$(O)/soundsrv.o \
	$(O)/sounds.o \
	$(O)/wadread.o \
	$(O)/linux.o -o $(O)/sndserver $(LIBS)
	echo make complete.

# Rule
$(O)/%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@


