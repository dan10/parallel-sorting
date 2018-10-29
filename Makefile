output: main.o quicksort.o parallelQuicksort.o
	gcc main.o quicksort.o parallelQuicksort.o -o output -fopenmp -lm

main.o: main.c
	gcc -c main.c -fopenmp -lm

quicksort.o: quicksort.c
	gcc -c quicksort.c -fopenmp -lm

parallelQuicksort.o: parallelQuicksort.c
	gcc -c parallelQuicksort.c -fopenmp -lm

debug:
	gcc -g -c main.c -fopenmp -lm
	gcc -g -c quicksort.c -fopenmp -lm
	gcc -g -c parallelQuicksort.c -fopenmp -lm
	gcc -g main.o quicksort.o parallelQuicksort.o -o debug -fopenmp -lm

clear:
	rm -rf *.o output debug