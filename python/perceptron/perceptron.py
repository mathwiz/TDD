import numpy as np
import random


def sign(x):
    return -1 if x < 0 else 1


class P:
    def __init__(self, size=2, bias=1, threshold=0, activation=sign):
        self.threshold = threshold
        self.activation = activation
        self.weights = np.random.rand(size)

    def __repr__(self):
        return "Perceptron of " + str(self.weights)

    def learn(self, inputs, output):
        pass


def train(data, network, size):
    for r in data:
        print(r[0:size], r[size])


#p1 = P(4)
#print(p1)

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

print(data)

train(data, P(size=2), 2)

