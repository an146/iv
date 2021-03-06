CFLAGS=-g -Wall -std=c++11 -Wno-nonnull-compare

iv: Makefile iv.cpp config.cpp handle_command.cpp
	g++ ${CFLAGS}  -o $@  iv.cpp `pkg-config --cflags --libs ncurses`

test: test1
	./test1 100000

test1: test1.cpp list.h Makefile
	g++ ${CFLAGS} -o $@ test1.cpp

.PHONY: test
