#include <stdio.h>
#include <stdlib.h>
void recurse(int depth) {
    int stack_var;
    // TODO: Print address of stack_var - Done
    printf("Stack variable address at depth %d: %p\n", depth, (void*)&stack_var);
    if (depth > 0)
    recurse(depth- 1);
}
int main() {
    // TODO: Allocate memory using malloc - Done
    int* arr1 = malloc(10 * sizeof(int));
    printf("Heap memory allocated with malloc: %p\n", (void*)arr1);
    // TODO: Allocate memory using calloc - Done
    int* arr2 = calloc(10, sizeof(int));
    printf("Heap memory allocated with calloc: %p\n", (void*)arr2);
    // TODO: Reallocate one block using realloc - Done
    arr1 = realloc(arr1, 20 * sizeof(int));
    printf("Heap memory reallocated with realloc: %p\n", (void*)arr1);
    // TODO: Print heap addresses - Done above
    recurse(5);
    /*---- DO NOT REMOVE THIS LINE---- */
    getchar();
    // pause execution for memory inspection
    // TODO: Free all allocated memory
    free(arr1);
    free(arr2);
    return 0;
}