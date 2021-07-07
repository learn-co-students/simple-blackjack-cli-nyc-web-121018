def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  return rand(1..11)# code #deal_card here
end

def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  answer = gets.chomp
  
# code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card1 = deal_card
  card2 = deal_card

  display_card_total(card1 + card2)
  card1 + card2
  # code #initial_round here
end

def hit?(card_total)
  prompt_user
  user = get_user_input
    while user != "s" && user != "h"
      invalid_command
      prompt_user
      user = get_user_input
    end
    if user == "h"
      card_total += deal_card
    end
  return card_total
  end





  # code hit? here

def invalid_command
  puts "Please enter valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  sum  = 0
  until sum > 21
    sum += hit?(total)
    display_card_total(sum)

  end
return end_game(sum)
  # code runner here
end

runner
