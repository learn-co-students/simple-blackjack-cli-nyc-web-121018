def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  (rand(1..11))
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  return card_total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = (a = deal_card) + (b = deal_card)
 
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  inp = get_user_input
  
  if inp == 'h'
    card_total += deal_card
    
  elsif inp == 's'
   card_total
    
  else
    invalid_command
    prompt_user
    inp
    
  end
  
  
  
  
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
# code runner here
 init = 0 
 hr = 0 
 total = init + hr

until total > 21
  welcome 
  init = initial_round
  hr = hit?(init)
  
end
  end_game(total)
  
end
 
  

  

    
