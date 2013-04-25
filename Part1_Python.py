# Note:
# I cannot find other student's repositories, and I do not want
# to work on my algorithm in Assignment 2. So I make up another
# algorithm in Python and try to improve on it using Cython.

# We approximate the value of pi using Monte-Carlo

from random import random

def MC_pi(N):
    count = 0
    for i in range(N):
        x = 2*random() - 1
        y = 2*random() - 1
        if x*x + y*y <= 1:
            count = count + 1
    return 4.0 * count / N

