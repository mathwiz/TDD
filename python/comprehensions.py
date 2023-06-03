from random import randint
from functools import reduce

n = 32
all = [randint(0, n) for _ in range(n)] 
print ("List of", len(all), "random numbers")
print (all)

mapper = lambda x: x / 2 if x % 2 == 0 else x + 1
mapped = map(mapper, all)
print ("Use of map")
print (mapped)

big_ones = lambda x: x > 9
filtered = filter(big_ones, mapped)
print ("Use of filter")
print (filtered)

print ("Comprehension version")
comp = [y for y in [mapper(x) for x in all] if big_ones(y)]
print (comp)
composed = filter(big_ones, map(mapper, all))
print (composed)

print ("How are comprehensions better?\n")

print ("The sum is", sum(comp))
reduced = reduce(lambda a, b: a + b, comp)
print ("Use of reduce:", reduced)
comp_sum = 0
for x in comp:
    comp_sum += x
print ("Use of loop:", comp_sum)

chars = "atcg"
combos= ([b1+b2+b3 for b1 in chars for b2 in chars for b3 in chars])
print(combos)
print(len(combos))

