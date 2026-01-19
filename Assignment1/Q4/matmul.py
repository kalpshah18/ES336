import numpy as np
import time

n = int(input("Enter the size of the matrices (n x n): "))

a = np.random.randint(0, 10, (n, n))
b = np.random.randint(0, 10, (n, n))

start_time = time.time()

c = np.matmul(a, b)

end_time = time.time()

execution_time = end_time - start_time
print(f"Execution Time of Matrix Multiplication: {execution_time:.6f} seconds")