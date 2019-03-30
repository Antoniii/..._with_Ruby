# Get My Number Game

puts "Welcome to 'Get My Number!'"

# Получение имени игрока и вывод приветствия.
print "What's your name? "
input = gets
name = input.chomp # удаляет символы после ## здесь \n
puts "Welcome, #{name}!"

# Сохранение случайного числа.
N = 1000
puts "I've got a random number between 1 and #{N}."
puts "Can you guess it?"
target = rand(N) + 1

# Отслеживание кол-ва попыток.
num_guesses = 0

# Признак продолжения игры
guessed_it = false

until num_guesses == 10 || guessed_it # while not

	puts "You've got #{10-num_guesses} guesses left."
	print "Make a guess: "
	guess = gets.to_i

	num_guesses += 1

	# Сравнение введённго числа с загаданным и вывод
	# соответствующего сообщения
	if guess < target
		puts "Oops! Your guess was LOW."
	elsif guess > target
		puts "Oops! Your guess was HIGH."
	elsif guess == target
		puts "Good job, #{name}!"
		puts "Your guessed my number in #{num_guesses} guesses!"
		guessed_it = true
	end

end

# Если попыток не осталось, сообщить загаданное число.
unless guessed_it # if not
	puts "Sorry. You didn't get my number. (It was #{target}.)"
end
