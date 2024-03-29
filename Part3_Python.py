# Implementation using Python

# We use the Sieve of Eratosthenes

def primes_10000():
    candidates = list(range(2,10001))
    primes = []
    while candidates != []:
        new_prime = candidates[0]
        primes.append(new_prime)
        for number in candidates:
            if number % new_prime == 0:
                candidates.remove(number)
    return primes

timeit("primes_10000()")
