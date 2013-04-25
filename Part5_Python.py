# implementation using Python

from random import random

A = []
B = []
C = []
for i in [0, 1, 2, 3]:
    A.append([random(), random(), random(), random()])
    B.append([random(), random(), random(), random()])
    C.append([0.0, 0.0, 0.0, 0.0])

def mul44():
    for i in [0, 1, 2, 3]:
        for j in [0, 1, 2, 3]:
            S = 0
            for k in [0, 1, 2, 3]:
                S = S + A[i][k]*B[k][j]
            C[i][j] = S

timeit("mul44()")
