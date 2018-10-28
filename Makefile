output: main.o quicksort.o
	gcc main.o quicksort.o -o output

main.o: main.c
	gcc -c main.c

quicksort.o: quicksort.c
	gcc -c quicksort.c

debug:
	gcc -g -c main.c
	gcc -g -c quicksort.c
	gcc -g main.o quicksort.o -o debug
	gdb debug

clear:
	rm -rf *.o output debug