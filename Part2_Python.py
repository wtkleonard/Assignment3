# Part 2

# Implementation using Python

def sum_sq(n):
    S = 0
    for i in range(1, n+1):
        S = S + i*i
    return(S)
    
timeit("sum_sq(10000)")
