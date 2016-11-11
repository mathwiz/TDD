def getPermutation(s, prefix=''):
    if len(s) == 0:
        print(prefix)
    for i in range(len(s)):
        getPermutation(s[0:i] + s[i + 1:len(s)], prefix + s[i])

getPermutation('abcd')

def generatePerm(s):
    perms = []
    if len(s) == 0:
        return perms
    elif len(s) == 1:
        perms.append(s[0])
    else:
        sublist = generatePerm(s[1:])
        for x in sublist:
            for i in range(len(x)):
                perms.append(x[0:i] + s[0] + x[i:])
    return perms


print(generatePerm('abcd'))
