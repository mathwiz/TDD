print("#7")
def general_poly (L):
    """ L, a list of numbers (n0, n1, n2, ... nk)
    Returns a function, which when applied to a value x, returns the value
    n0 * x^k + n1 * x^(k-1) + ... nk * x^0 """
    def func(x):
        result = 0
        k = len(L) - 1
        for i in range(k + 1):
            result += L[i] * x**(k-i)
        return result
    return func

print(general_poly([0, 2, 3, 4])(10))

print("#6")
class Person(object):
    def __init__(self, name):
        self.name = name
    def say(self, stuff):
        return self.name + ' says: ' + stuff
    def __str__(self):
        return self.name

class Lecturer(Person):
    def lecture(self, stuff):
        return 'I believe that ' + Person.say(self, stuff)

class Professor(Lecturer):
    def say(self, stuff):
        return self.name + ' says: ' + self.lecture(stuff)

class ArrogantProfessor(Professor):
    def lecture(self, stuff):
        return 'It is obvious that ' + Person.say(self, stuff)

e = Person('eric')
le = Lecturer('eric')
pe = Professor('eric')
ae = ArrogantProfessor('eric')

print(e.say('the sky is blue'))
print(le.say('the sky is blue'))
print(le.lecture('the sky is blue'))
print(pe.say('the sky is blue'))
print(le.lecture('the sky is blue'))
print(ae.say('the sky is blue'))
print(ae.lecture('the sky is blue'))

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
