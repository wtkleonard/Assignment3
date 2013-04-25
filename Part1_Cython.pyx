%cython

from random import random 

def cython_MC_pi(int N):
    cdef int count = 0
    cdef double x
    cdef double y
    for i in range(N):
        x = 2*random() - 1
        y = 2*random() - 1
        if x*x + y*y <= 1:
            count = count + 1
    return 4.0 * count / N
