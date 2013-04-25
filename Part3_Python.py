# Implementation using Python

# We use the Sieve of Eratosthenes

def primes(n):
    candidates = list(range(2,(n+1)))
    primes = []
    while candidates != []:
        new_prime = candidates[0]
        primes.append(new_prime)
        for number in candidates:
            if number % new_prime == 0:
                candidates.remove(number)
    return primes

timeit("primes(10000)")
