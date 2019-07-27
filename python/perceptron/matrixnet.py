import numpy as np
import random


def sign(x):
    return -1 if x < 0 else 1

def nextweight(x, w, c, d):
    return c * (d - sign(x * w)) * x
    

def train(data, network, size):
    for r in data:
        print(r[0:size], r[size])

bias = 1

network = np.array([1, 1])

data = np.array([
    [1.0, 1.0, 1],
    [9.4, 6.4, -1],
    [2.5, 2.1,  1],
    [8.0, 7.7, -1],
    [0.5, 2.2, 1],
    [7.9, 8.4, -1],
    [7.0, 7.0, -1],
    [2.8, 0.8, 1],
    [1.2, 3.0, 1],
    [7.8, 6.1, -1],
    ])

#print(data)
print(network * 2)

train(data, None, 2)

