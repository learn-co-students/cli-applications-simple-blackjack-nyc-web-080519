def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_1 = deal_card
  card_2 = deal_card
  sum = card_1 + card_2
  display_card_total(sum)
  sum
end

def hit?(total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 'h'
    card = deal_card
    total += card
  elsif input != 's'
    invalid_command
    hit?(total)
  end
  total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum = initial_round
  while sum <= 21 do
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
