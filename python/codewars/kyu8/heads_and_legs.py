def animals(heads, legs):
    #print ("input: " + str(heads) + "," + str(legs))
    for i in range(0, heads + 1):
        #print("\ti=" + str(i) + " rest=" + str(heads - i))
        remainder = legs - (i * 2 + (heads - i) * 4)
        #print("\tremainder: " + str(remainder))
        if remainder == 0:
            return i, heads - i
    return "No solutions"


print(animals(2, 40))
print(animals(2, 4))
print(animals(3, 6))
print(animals(4, 8))
print(animals(4, 7))
print(animals(0, 6))
print(animals(6, 24))
