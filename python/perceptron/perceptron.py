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


def train(data, network):
    pass


p1 = P(4)
print(p1)


