VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

WINNING_MOVES = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['paper', 'spock'],
  'spock' => ['scissors', 'rock']
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  #hash lookup
  WINNING_MOVES[first].include?(second)
=begin
  let's say user choice is 'spock'
  the method will check and return
  ['scissors', 'rock']
  and then it checks if the the second argument
  is included on that array ['scissors', 'rock']
=end
end

=begin
def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'spock' && second == 'rock')
end
=end

def determine_winner(player, computer)
  if win?(player, computer)
    'player'
  elsif win?(computer, player)  
    'computer'
  else
    'tie'
  end
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

player_wins = 0
computer_wins = 0

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp().downcase()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  
  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
  
  display_results(choice, computer_choice)
  
  if determine_winner(choice, computer_choice) == 'player'
    player_wins += 1
  elsif determine_winner(choice, computer_choice) == 'computer'
    computer_wins += 1
  else
    prompt("Nobody Gets a Point")
  end

  prompt("Player Score: #{player_wins}")
  prompt("Computer Score: #{computer_wins}")

  #prompt("Do you want to play again?")
  #answer = Kernel.gets().chomp()
  #break unless answer.downcase().start_with?('y')
  
  break if player_wins == 3 || computer_wins == 3
end

if player_wins == 3
  prompt("Congrats, you were the GRAND WINNER")
else
  prompt("Oh :( the computer won, better luck next time")
end

prompt("Thank You for playing. Good Bye!")
