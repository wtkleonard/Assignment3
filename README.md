### Assignment3
===========

### Part 1

   We implemented a simple Monte Carlo algorithm to estimate pi.
   
   (a) Python implementatiuon
   
   Here is the output for n = 10000:
   
    5 loops, best of 3: 336 ms per loop
   
   (b) Cython implementation
   
   Here is the output for n = 10000:
         
    125 loops, best of 3: 3.31 ms per loop

### Part 2

   (a) Python implementation

   Here is the output for n = 10000:

    625 loops, best of 3: 1.11 ms per loop
   
   (b) Cython implementation

   Here is the output for n = 10000:

    625 loops, best of 3: 437 µs per loop

### Part 3

   (a) Python implementation

   Here is the output:

    5 loops, best of 3: 557 ms per loop

   (b) Cython implementation

   Here is the output:

    625 loops, best of 3: 84.9 µs per loop

### Part 4

First, we measure the time needed to create a random 4x4 matrix and compute its determinant.

   (a) Python implementation
   
    625 loops, best of 3: 10.6 µs per loop

   (b) Cython implementation
   
    625 loops, best of 3: 874 ns per loop

Next, we fix a matrix, and measure only the time needed to compute the determinant.

   (a) Python implementation
   
    625 loops, best of 3: 8.78 µs per loop

   (b) Cython implementation
   
    625 loops, best of 3: 76.7 ns per loop

### Part 5

We fix two matrices and measure the time needed to compute their product.

   (a) Python implementation
   
    625 loops, best of 3: 193 µs per loop

   (b) Cython implementation
   
    625 loops, best of 3: 6.05 µs per loop



