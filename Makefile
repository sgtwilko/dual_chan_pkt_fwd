# dual_chan_pkt_fwd
# Dual Channel LoRaWAN Gateway

CC=g++
CFLAGS=-c -Wall
LIBS=-lwiringPi

all: dual_chan_pkt_fwd

dual_chan_pkt_fwd: base64.o main.o
	$(CC) main.o base64.o $(LIBS) -o dual_chan_pkt_fwd

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

base64.o: base64.c
	$(CC) $(CFLAGS) base64.c

clean:
	rm *.o dual_chan_pkt_fwd	
