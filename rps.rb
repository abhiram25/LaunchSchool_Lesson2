require 'pry'

VALID_CHOICE = %w(rock paper scissors lizard spock)

def prompt(message)
  puts "=> #{message}"
end

def ock?(first, second)
  (first.match("ock") && second == "scissors") ||
    ((first == "spock") && second == "rock") ||
    ((first == "paper") && second.match("ock"))
end

def lizard?(first, second)
  (first.match("i") && second == "paper") ||
    ((first == "lizard") && second == "spock")
end

def win?(first, second)
  ock?(first, second) ||
    lizard?(first, second) ||
    ((first == "rock" || first == "scissors") && second == "lizard")
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won")
  elsif win?(computer, player)
    prompt("Computer won")
  else
    prompt("It was a draw")
  end
end

player_score = 0
computer_score = 0
winning_score = 5

loop do
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICE.join(', ')}")
    choice = gets.chomp

    case choice
    when "r"
      choice = "rock"
    when "p"
      choice = "paper"
    when "l"
      choice = "lizard"
    when "sp"
      choice = "spock"
    when "sc"
      choice = "scissors"
    end

    prompt("please type in sp for spock or sc for scissors") if choice == "s"

    if VALID_CHOICE.include?(choice)
      break
    else
      prompt("#{choice} is not valid, try again")
    end
  end

  computer_choice = %w(rock paper scissors).sample

  prompt("You chose #{choice}, computer chose #{computer_choice}")

  display_results(choice, computer_choice)

  player_score += 1 if win?(choice, computer_choice)

  computer_score += 1 if win?(computer_choice, choice)

  next unless player_score == winning_score || computer_score == winning_score
  prompt("")
  prompt("You won the match") if player_score == winning_score
  prompt("Computer won the match") if computer_score == winning_score
  prompt("Would you like to play again")
  player_score = 0
  computer_score = 0
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end
prompt("Thank you for playing! Good Bye!")
