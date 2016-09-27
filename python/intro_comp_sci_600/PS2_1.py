balance = 5000
annualInterestRate = .18
monthlyPaymentRate = .02

def minPayment(balance, paymentRate):
    return balance * paymentRate

def interest(balance, rate):
    return balance * (rate/12.0)

def calculate(start):
    bal = start
    for i in range(12):
        minPay = minPayment(bal, monthlyPaymentRate)
        unpaid = bal - minPay
        bal = unpaid + interest(unpaid, annualInterestRate)

    return bal

print("Remaining balance", round(calculate(balance), 2))

print("minPayment", minPayment(balance, monthlyPaymentRate))
print("interest", interest(balance, annualInterestRate))