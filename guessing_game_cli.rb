# Code your solution here!
def run_guessing_game
  number = rand(6) + 1
  puts "Guess a number between 1 and 6"
  reply = gets.chomp
  if reply.to_i === number
    puts "/You guessed the correct number!/"
  elsif reply === "exit"
    puts "Goodbye!"
  elsif reply.to_i != number
    puts "/Sorry! The computer guessed #{number}./"
  end
end
