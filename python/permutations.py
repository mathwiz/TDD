def getPermutation(s, prefix=''):
    if len(s) == 0:
        print(prefix)
    for i in range(len(s)):
        getPermutation(s[0:i] + s[i + 1:len(s)], prefix + s[i])


getPermutation('ab', '')
