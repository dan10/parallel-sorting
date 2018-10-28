output: main.o quicksort.o
	gcc main.o quicksort.o -o output

main.o: main.c
	gcc -c main.c

quicksort.o: quicksort.c
	gcc -c quicksort.c

clear:
	rm -rf *.o output