def run_guessing_game
  computerNumber = getRandNumber
  input = getUserInput
  checkedInput = inputCheck(input)
  if(checkedInput == "exit")
    exitGame
  else
    guessedCorrect(computerNumber, checkedInput)
  end
end

def getRandNumber
  rand(1..6)
end

def getUserInput
  gets.chomp
end

def inputCheck(input) # this takes the user input, validates it, and returns it converted or re-runs this method
  integer_input = input.to_i
    if input == "exit"
      transformedInput = input
    elsif (integer_input.between?(1,6))
      transformedInput = integer_input
    else
      invalid_command
      getUserInput
    end

    transformedInput
end

def invalid_command
  puts "Not a valid entry! Try again!"
end

def exitGame
  puts "Goodbye!"
end

def guessedCorrect(numGenerated, numGuessed)
  if (numGenerated == numGuessed)
    puts "You guessed the correct number!"
  else
    puts "Sorry! The computer guessed #{numGenerated}."
  end
end
