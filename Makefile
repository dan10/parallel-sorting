output: main.o quicksort.o parallelQuicksort.o
	gcc main.o quicksort.o -o output -fopenmp

main.o: main.c
	gcc -c main.c -fopenmp

quicksort.o: quicksort.c
	gcc -c quicksort.c -fopenmp

parallelQuicksort.o: parallelQuicksort.c
	gcc -c parallelQuicksort.c -fopenmp

debug:
	gcc -g -c main.c -fopenmp
	gcc -g -c quicksort.c -fopenmp
	gcc -g -c parallelQuicksort.c -fopenmp
	gcc -g main.o quicksort.o parallelQuicksort.o -o debug -fopenmp

clear:
	rm -rf *.o output debug