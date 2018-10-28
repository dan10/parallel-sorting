#include <stdio.h>

void printArr(int* arr, int len);
void quicksort(int* arr, int len);

void main()
{

}

// Prints and integer array 'arr' of length 'len'
void printArr(int* arr, int len)
{
    int i = 0;

    printf("[ ");

    for(i = 0; i < len; i++) printf("%d ", arr[i]);
    
    printf("]\n");
}