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



bias = 1
weights = [ random.random(), random.random(), random.random() ]
#weights = [random.random(), random.random()]

data = [
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
    ]

tests = [
    [7, 5],
    [1, 9],
    [5, 4],
    [5, 6],
    [.4, 3],
    [2, 1.1],
    [2, 8.7],
    [4, 2],
    [4, 8],
    [0, 0],
    [10, 10]
]

#print(data)
#print(weights)
#print(deltaweights(network, weights, 2, -1))
#print([y for x, y in zip([1,2,3], [.1,.2,.3])])
#print(sum([1,2,3]))
#print(learningrule(data[0][0:2], weights, target=-1, rate=1, bias=1))

newweights = train(data, weights, 2)
print(newweights)
print("tests")
for test in tests:
    f = sum([ x * w for x, w in zip(test + [1], newweights) ])
    print(test, f, sign(f))

#train(data, None, 2)

