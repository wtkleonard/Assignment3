%cython
    
cdef double A[4][4]
cdef double B[4][4]
cdef double C[4][4]
    
for i in [0, 1, 2, 3]:
    for j in [0, 1, 2, 3]:
        A[i][j] = random()
        B[i][j] = random()
        C[i][j] = 0.0

def cython_mul44():
    for i in [0, 1, 2, 3]:
        for j in [0, 1, 2, 3]:
            S = 0
            for k in [0, 1, 2, 3]:
                S = S + A[i][k]*B[k][j]
            C[i][j] = S

timeit("cython_mul44()")
