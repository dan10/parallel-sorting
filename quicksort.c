// Swaps two values in an integer array
void swap(int* arr, int i, int j)
{
    int tmp = arr[i];
    arr[i] = arr[j];
    arr[j] = tmp;
}

// Recursive quicksort implementarion
void quicksort(int* arr, int start, int end)
{
    int i = start;
    int j = end;
    int pivot = arr[(j + i) / 2]; // Get the element in the middle of the array and set it as the pivot

    while(i < j)
    {
        // Increment i until the value it's pointed at is greater than the pivot
        while (arr[i] < pivot) i++;

        // Decrement j until the value it's pointed at is lesser than the pivot
        while (arr[j] > pivot) j--;

        swap(arr, i, j);
        i++;
        j--;
    }

    if (start < j) quicksort(arr, start, j - 1); // Calls quicksort on the left-most half of the array
    if (end   > i) quicksort(arr, i + 1,   end); // Calls quicksort on the right-most half of the array
}

// Quicksort entry-point
void quicksort(int* arr, int len)
{
    if (len > 0)
        quicksort(arr, 0, len);
}