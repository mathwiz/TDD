def Square(x):
    return SquareHelper(abs(x), abs(x))


def SquareHelper(n, x):
    if n == 0:
        return 0
    return SquareHelper(n - 1, x) + x


print(Square(-4))


def closest_power(base, num):
    power = 0
    while base ** power < num:
        power += 1
    return power if abs(base ** power - num) < abs(num - base ** (power - 1)) else power - 1


print(closest_power(2, 15))
print(closest_power(2, 12))
print(closest_power(2, 11))


def dotProduct(listA, listB):
    '''
    listA: a list of numbers
    listB: a list of numbers of the same length as listA
    '''
    dot = 0
    for it in range(len(listA)):
        dot += listA[it] * listB[it]
    return dot


print(dotProduct([2, 2, 3], [4, 5, 6]))


def deep_reverse(L):
    """ assumes L is a list of lists whose elements are ints
    Mutates L such that it reverses its elements and also
    reverses the order of the int elements in every element of L.
    It does not return anything.
    """

    # Your code here
    def doRev(L):
        for it in range(len(L) // 2):
            mirrorIndex = len(L) - it - 1
            L[it], L[mirrorIndex] = L[mirrorIndex], L[it]

    doRev(L)
    for it in L:
        doRev(it)


L = [[1]]
deep_reverse(L)
print(L)
L = [[1], [2, 4]]
deep_reverse(L)
print(L)
L = [[1, 2, 3], [4, 3, 2], []]
deep_reverse(L)
print(L)

f = lambda x, y: x + y


def dict_interdiff(d1, d2):
    '''
    d1, d2: dicts whose keys and values are integers
    Returns a tuple of dictionaries according to the instructions above
    '''
    # Your code here
    inter = {}
    diff = d2.copy()
    for it in d1:
        if (it in d2):
            inter[it] = f(d1[it], d2[it])
            diff.pop(it)
        else:
            diff[it] = d1[it]
    return (inter, diff)


d1 = {1: 30, 2: 20, 3: 30, 5: 80}
d2 = {1: 40, 2: 50, 3: 60, 4: 70, 6: 90}
print(dict_interdiff(d1, d2))

f = lambda x: x ** 2
g = lambda x: x < 5


def applyF_filterG(L, f, g):
    """
    Assumes L is a list of integers
    Assume functions f and g are defined for you.
    f takes in an integer, applies a function, returns another integer
    g takes in an integer, applies a Boolean function,
        returns either True or False
    Mutates L such that, for each element i originally in L, L contains
        i if g(f(i)) returns True, and no other elements
    Returns the largest element in the mutated L or -1 if the list is empty
    """
    max = float('-inf')
    elems = L.copy()
    L.clear()
    for i in range(len(elems)):
        if g(f(elems[i])):
            L.append(elems[i])
            if elems[i] > max:
                max = elems[i]
    return -1 if len(L) == 0 else max


filtertest = [1, 2, 3, 4, 5]
print(applyF_filterG(filtertest, f, g))
print(filtertest)

filtertest = []
print(applyF_filterG(filtertest, f, g))
print(filtertest)


def flatten(aList):
    '''
    aList: a list
    Returns a copy of aList, which is a flattened version of aList
    '''
    if not isinstance(aList, list):
        return [aList]
    elif len(aList) < 1:
        return aList
    else:
        return flatten(aList[0]) + flatten(aList[1:])



flattentest = [[1, [2]], [3, 4, [5]], [[[6]]], [[[[7], 8]], [9, [10], 11], [12]]]
print(flattentest)
print(flatten(flattentest))
