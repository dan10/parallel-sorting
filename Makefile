output: main.o quicksort.o parallelQuicksort.o
	gcc main.o quicksort.o -o output

main.o: main.c
	gcc -c main.c

quicksort.o: quicksort.c
	gcc -c quicksort.c

parallelQuicksort.o: parallelQuicksort.c
	gcc -c parallelQuicksort.c

debug:
	gcc -g -c main.c
	gcc -g -c quicksort.c
	gcc -g -c parallelQuicksort.c
	gcc -g main.o quicksort.o parallelQuicksort.o -o debug

clear:
	rm -rf *.o output debug