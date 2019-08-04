import random


def sign(x):
    return -1 if x < 0 else 1

def learningrule(xs, weights, target, rate, bias):
    return [ w + rate * (target - sign(x*w)) * x
                 for x, w in zip(xs + [bias], weights) ]

def deltaweights(xs, w, target, rate=1, bias=1):
    products = [ w[i] * val for i, val in enumerate(xs + [bias]) ] 
    result = sign(sum(products))
    return w if result == target else learningrule(xs, w, target, rate, bias)
    
def train(data, network, size):
    weights = network
    for row in data:
        inputs = row[0:size]
        goal = row[size]
        weights = deltaweights(inputs, weights, goal)
        print(inputs, goal, weights)
    return weights

        
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
    [7, 5, -1],
    [1, 9.9, -1],
    [1, 7, 1],
    [5, 1, 1],
    [5, 9, -1],
    [.4, 3, 1],
    [2, 0.1, 1],
    [2, 9.8, -1],
    [4, 2, 1],
    [4, 8, -1],
    [0, 0, 1],
    [10, 10, -1]
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
    f = sum([ x * w for x, w in zip(test[0:2] + [1], newweights) ])
    print(test, f, test[2] == sign(f))

#train(data, None, 2)

