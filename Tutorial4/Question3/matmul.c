#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(){
    srand(time(NULL));

    clock_t start, end;
    double elapsed_time;

    int n = 1024;

    int **arr1 = (int **)malloc(n * sizeof(int *));
    int **arr2 = (int **)malloc(n * sizeof(int *));
    int **result = (int **)malloc(n * sizeof(int *));

    for(int i = 0; i < n; i++){
        arr1[i] = (int*)malloc(n * sizeof(int));
        arr2[i] = (int*)malloc(n * sizeof(int));
        result[i] = (int*)malloc(n * sizeof(int));
    }

    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            arr1[i][j] = rand() % 10;
            arr2[i][j] = rand() % 10;
            result[i][j] = 0;
        }
    }


    start = clock();

    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            for(int k = 0; k < n; k++){
                result[i][j] += arr1[i][k] * arr2[k][j];
            }
        }
    }

    end = clock();

    elapsed_time = (double)(end - start) / (double)CLOCKS_PER_SEC;

    for(int i = 0; i < n; i++){
        free(arr1[i]);
        free(arr2[i]);
        free(result[i]);
    }

    free(arr1);
    free(arr2);
    free(result);
    printf("Time taken for matrix multiplication: %f seconds\n", elapsed_time);

    return 0;
}