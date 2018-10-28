#include <stdio.h>
#include <stdbool.h>

void printArr(int* arr, int len);
void quicksort(int* arr, int len);
void parallelQuicksort(int* arr, int len);

void main()
{
    int n = 10000;
    int arr[n];
    int buffer = -1;
    int i;
    
    // Reads n entries from stdin
    for(i = 0; i < n; i++)
    {
        scanf("%d", &buffer);
        arr[i] = buffer;
    }
}

// Prints and integer array 'arr' of length 'len'
void printArr(int* arr, int len)
{
    int i = 0;

    for(i = 0; i < len; i++) printf("%d\t", arr[i]);
    
    printf("\n");
}