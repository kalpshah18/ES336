import random
import time

n = int(input("Enter the size of the matrices (n x n): "))

A = [[random.randint(1, 10) for _ in range(n)] for _ in range(n)]
B = [[random.randint(1, 10) for _ in range(n)] for _ in range(n)]
C = [[0 for _ in range(n)] for _ in range(n)]

start_time = time.time()

for i in range(n):
    for j in range(n):
        for k in range(n):
            C[i][j] += A[i][k] * B[k][j]

end_time = time.time()

execution_time = end_time - start_time
print(f"Time taken for matrix multiplication of size {n}x{n}: {execution_time:.6f} seconds")