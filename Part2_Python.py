
# Compute the sum of the squares of
# the positive integers up to n, where
# you may assume that n is at most 10000.

# Implementation using Python
def sum_to_n(n):
    S = 0
    for i in range(1, n+1):
        S = S + i
    return(S)

# Time the implementation
timeit("sum_to_n(10000)")
