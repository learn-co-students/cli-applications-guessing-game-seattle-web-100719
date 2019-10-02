# Code your solution here!
def generate 
  return rand(6) + 1
end

def prompt_user
  puts "Please choose a number between 1 and 6."
end

def gather_input
  return gets.chomp
end

def run_guessing_game
  comp_number = generate
  prompt_user
  user_number = gather_input
  if comp_number == user_number.to_i
    puts "You guessed the correct number!"
  elsif user_number == "exit"
    puts "Goodbye!"
  else
    puts "Sorry! The computer guessed #{comp_number}."
  end
end