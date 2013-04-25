%cython
def cython_primes_10000():
    cdef int new_prime = 2
    cdef int n
    cdef int candidates[10001]
    primes = []

    for i in range(0, 10001):
        candidates[i] = 1
    
    while new_prime <= 10000:
        # add the new prime to the list
        primes.append(new_prime)
        
        # delete all multiples new_prime
        n = new_prime
        while n <= 10000:
            candidates[n] = 0
            n = n + new_prime
        
        # find the next prime
        while True:
            new_prime = new_prime + 1
            if candidates[new_prime] == 1:
                break
        
    return primes


timeit("cython_primes_10000()")
