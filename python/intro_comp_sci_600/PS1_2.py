s = 'azcbobobegghaklbob'
n = 0
for i in range(len(s)):
    if "bob" == s[i:i+3]:
        n += 1

print("Number of times bob occurs is:", n)