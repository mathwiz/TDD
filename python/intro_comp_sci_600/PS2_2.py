balance = 5000
annualInterestRate = .18
monthlyPaymentRate = .02

def minPayment(balance, paymentRate):
    return balance * paymentRate

def interest(balance, rate):
    return balance * (rate/12.0)

def payoff(balance, payment):
    bal = balance
    for i in range(12):
        unpaid = bal - payment
        bal = unpaid + interest(unpaid, annualInterestRate)

    return bal

def calculate(balance):
    payment = 10
    while payoff(balance, payment) > 0:
        payment += 10

    return payment


print("Lowest Payment", calculate(balance))

print("payoff", payoff(balance, 450))