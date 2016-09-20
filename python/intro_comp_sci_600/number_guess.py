print("Please think of a number between 0 and 100!")
low = 0
high = 100
guess = (low + high) // 2
print("Is your secret number", str(guess) + "?")
prompt = "Enter 'h' to indicate the guess is too high. Enter 'l' to indicate the guess is too low. Enter 'c' to indicate I guessed correctly. "
response = input(prompt)
while response != 'c':
    if response == 'l':
        low = guess
    elif response == 'h':
        high = guess
    else:
        print("Sorry I did not understand your input.")

    guess = (low + high) // 2
    print("Is your secret number", str(guess) + "?")
    response = input(prompt)

print("Game over. Your secret number was:", guess)