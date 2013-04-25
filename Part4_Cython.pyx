%cython
cdef extern from "stdlib.h":
    double random()

def cython_det44():
    cdef double A[4][4]
    
    # define A as a C array
    for i in [0, 1, 2, 3]:
        for j in [0, 1, 2, 3]:
            A[i][j] = random()
            
    # Compute the determinant of A naively
    d01 = A[2][0]*A[3][1] - A[3][0]*A[2][1]
    d02 = A[2][0]*A[3][2] - A[3][0]*A[2][2]
    d03 = A[2][0]*A[3][3] - A[3][0]*A[2][3]
    d12 = A[2][1]*A[3][2] - A[3][1]*A[2][2]
    d13 = A[2][1]*A[3][3] - A[3][1]*A[2][3]
    d23 = A[2][2]*A[3][3] - A[3][2]*A[2][3]
    d0  = A[1][1]*d23 - A[1][2]*d13 + A[1][3]*d12
    d1  = A[1][0]*d23 - A[1][2]*d03 + A[1][3]*d02
    d2  = A[1][0]*d13 - A[1][1]*d03 + A[1][3]*d01
    d3  = A[1][0]*d12 - A[1][1]*d02 + A[1][2]*d01

    return A[0][0]*d0 - A[0][1]*d1 + A[0][2]*d2 - A[0][3]*d3
