print("#4")
def longest_run(L):
    longestIncreasing = []
    longestDecreasing = []
    increasingIndex = 0
    decreasingIndex = 0
    for i in range(len(L)):
        increasing = [L[i]]
        decreasing = [L[i]]
        stopIncreasing = False
        stopDecreasing = False
        for j in range(i + 1, len(L)):
            if not stopIncreasing and L[j] >= L[j - 1]:
                increasing = increasing + [L[j]]
            else:
                stopIncreasing = True
            if not stopDecreasing and L[j] <= L[j - 1]:
                decreasing = decreasing + [L[j]]
            else:
                stopDecreasing = True

        if len(increasing) > len(longestIncreasing):
            longestIncreasing = increasing
            increasingIndex = i
        if len(decreasing) > len(longestDecreasing):
            longestDecreasing = decreasing
            decreasingIndex = i

    if len(longestIncreasing) > len(longestDecreasing):
        longest = longestIncreasing
    elif len(longestIncreasing) == len(longestDecreasing) and increasingIndex < decreasingIndex:
        longest = longestIncreasing
    else:
        longest = longestDecreasing

    # print("longest")
    # print(longest)
    result = 0
    for it in longest:
        result += it
    return result


# print(longest_run([1, 2, 0]))
print(longest_run([10, 4, 3, 8, 3, 4, 5, 7, 7, 2]))

print("#3")
trans = {'0': 'ling', '1': 'yi', '2': 'er', '3': 'san', '4': 'si',
         '5': 'wu', '6': 'liu', '7': 'qi', '8': 'ba', '9': 'jiu', '10': 'shi'}


def convert_to_mandarin(us_num):
    '''
    us_num, a string representing a US number 0 to 99
    returns the string mandarin representation of us_num
    '''
    num = int(us_num)
    digit = num % 10
    tens = num // 10
    ones = "" if digit == 0 else " " + trans[str(digit)]
    if tens == 0:
        return (trans[str(digit)])
    elif tens == 1:
        return (trans['10'] + ones)
    else:
        return (trans[str(tens)] + " " + trans['10'] + ones)


print(convert_to_mandarin('36'))
print(convert_to_mandarin('20'))
print(convert_to_mandarin('16'))
print(convert_to_mandarin('10'))
print(convert_to_mandarin('01'))
print(convert_to_mandarin('0'))

print("#2")


class A(object):
    def foo(self):
        print('hi')


class B(A):
    def foo(self):
        print('bye')


a = A()
b = B()
print(a.foo())
print(b.foo())
