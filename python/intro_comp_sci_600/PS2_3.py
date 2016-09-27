balance = 5000
annualInterestRate = .18

def interest(balance, rate):
    return balance * (rate/12.0)

def payoff(balance, payment):
    bal = balance
    for i in range(12):
        unpaid = bal - payment
        bal = unpaid + interest(unpaid, annualInterestRate)

    return bal

def maxPayment(balance):
    return (balance * (1 + annualInterestRate/12)**12) / 12.0

def minPayment(balance):
    return balance / 12

def calculate(balance):
    minPay = minPayment(balance)
    maxPay = maxPayment(balance)
    payment = (minPay + maxPay) / 2
    result = round(payoff(balance, payment), 2)
    while result != 0.00:
        if result > 0.00:
            minPay = payment
        else:
            maxPay = payment
        payment = (minPay + maxPay) / 2
        result = round(payoff(balance, payment), 2)


    return round(payment, 2)


print("Lowest Payment", calculate(balance))

print("payoff", payoff(balance, 451.7))