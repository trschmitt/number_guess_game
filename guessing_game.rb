#Create a game where the user guesses a number between 1 and 100
#The user only have 5 guesses.

puts "Welcome to the greatest numbers game ever"

random_number = rand 1..20
user_number = 0
guesses = []
max_tries = 5
tries = 0

until user_number == random_number || tries == max_tries

  puts "Pick any number between 0 and 100:"
  puts
  user_number = gets.chomp.to_i

  if guesses.include? user_number
    puts "You already guessed that? Like... you even trying Broseph?"
    puts
    user_number = gets.chomp.to_i
    puts "Pick any number between 0 and 100:"
  end

  guesses.push user_number
  p guesses

  if user_number > random_number
    puts "Too high Brah!"

  elsif user_number < random_number
    puts "Too low Dude!!"

  else
    puts "Nailed it! #Good Job!"
    exit
  end
  tries += 1

  tries_limit = max_tries - tries

  puts "#{tries_limit} tries left Mate!"
  puts
  if tries == max_tries
    5.times do
      puts "Dude....."
    end
    puts "Try again you failed!!!"
  end
end
