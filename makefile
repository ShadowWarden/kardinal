obj=main.o parse.o evaluate.o variable.o logical.o relational.o general.o arithmetic.o etc.o

cfiles=main.c parse.c evaluate.c variable.c logical.c relational.c general.c arithmetic.c etc.c

flags=

CC=gcc

kardinal: $(obj)
	$(CC) -Wall -o kardinal -O3 $(obj)

evaluate.o: evaluate.c
	$(CC) -Wall -c evaluate.c 

main.o: main.c
	$(CC) -Wall -c main.c

parse.o: parse.c
	$(CC) -Wall -c parse.c

variable.o: variable.c
	$(CC) -Wall -c variable.c

logical.o: logical.c
	$(CC) -Wall -c logical.c

relational.o: relational.c
	$(CC) -Wall -c relational.c

general.o: general.c
	$(CC) -Wall -c general.c

arithmetic.o: arithmetic.c
	$(CC) -Wall -c arithmetic.c

etc.o: etc.c
	$(CC) -Wall -c etc.c

.PHONY: debug
debug: $(obj)
	$(CC) -Wall -g -o kardinal $(obj)

.PHONY: windows
windows: $(cfiles)
	i686-w64-mingw32-gcc -Wall $(cfiles) -o kardinal.exe



.PHONY: clean
clean:
	rm -f $(obj) kardinal .*.swp
