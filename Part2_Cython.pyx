# Implement using Cython

%cython

def cython_sum_sq(int n):
    cdef long S = 0
    for i in range(1, n+1):
        S = S + i*i
    return(S)

timeit("cython_sum_sq(10000)")
