def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
  return answer
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  total = card_one + card_two
  display_card_total(total)
  return total
end

def hit? (total)
  prompt_user
  input = get_user_input 
  if input == "s"
    total
  elsif input == "h"
    total += deal_card
  else
    invalid_command
  end  
end

def invalid_command
  if input != "h" || input != "s"
    puts "Please enter a valid command"
  end
  prompt_user
  get_user_input

end


def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    