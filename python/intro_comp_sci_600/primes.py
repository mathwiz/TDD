def genPrimes():
    primes = []
    num = 1
    while True:
        num += 1
        prime = True
        for it in primes:
            if num % it == 0:
                prime = False
                break
        if prime:
            primes.append(num)
            yield num


g = genPrimes()
for it in range(20):
    print(g.__next__())
