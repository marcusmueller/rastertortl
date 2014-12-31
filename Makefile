#!/usr/bin/make

all: rastertortl

rastertortl: 
	gcc -lcups -lcupsimage -o rastertortl rastertortl.c

install: all
	install rastertortl /usr/lib/cups/filter
	install designjet600.ppd $(shell cups-config --datadir)/model
