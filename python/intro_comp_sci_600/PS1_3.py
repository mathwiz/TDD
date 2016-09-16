s = 'nlyubrhmw'

longest = s[0]
for base in range(len(s)):
    i = base
    j = i + 1
    while j < len(s) and s[i] <= s[j]:
        if j - base + 1 > len(longest):
            longest = s[base:j + 1]
        j += 1
        i += 1

print("Longest substring in alphabetical order is:", longest)
