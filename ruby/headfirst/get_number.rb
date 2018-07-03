# Get My Number Game

puts "Welcome to 'Get My Number'!"
print "What's your name? "

input = gets

name = input.chomp

puts "Welcome, #{name}!"

# Store the target
limit = 100
puts "\nI've got a random number between 1 and #{limit}."
puts "Can you guess it?"
target = rand(limit) + 1

guess_limit = 7
num_guesses = 0
guessed_it = false

while num_guesses < guess_limit && (not guessed_it)

	puts "You've got #{guess_limit - num_guesses} gueses left."
	print "Make a guess: "
	guess = gets.to_i

	num_guesses += 1

	if guess < target
		puts "Oops. Your guess was LOW."
	elsif guess > target
		puts "Oops. Your guess was HIGH."
	else
		puts "\nGood job, #{name}!"
		puts "You guessed my number in #{num_guesses} guesses!"
		guessed_it = true
	end

end

unless guessed_it
	puts "\nSorry. You didn't get my number. (It was #{target}.)"
end
