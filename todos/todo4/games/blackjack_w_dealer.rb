#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game.  A player gets dealt two cards which have values between 1-11.  After they get dealt two cards you should show them the total score of their cards and ask them if they want to hit or stay. A player is allowed to "hit" up to two times.  After each hit you should ask if they want to hit or stay and display the total value of their cards. If they don't want to hit, and they are not at 21 they lose.  Your program should tell them they lose and exit.

#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game), alter the game so that a player can "hit" as many times as they want.







class Deck

	def initialize

		@hearts = ["2","3","4","5","6","7","8","9", "j", "q", "k", "a"].each {|num| num << "h" }
		@clubs = ["2","3","4","5","6","7","8","9", "j", "q", "k", "a"].each {|num| num << "c" }
		@spades = ["2","3","4","5","6","7","8","9", "j", "q", "k", "a"].each {|num| num << "s" }
		@diamonds = ["2","3","4","5","6","7","8","9", "j", "q", "k", "a"].each {|num| num << "d" }

		@deck = Array.new
		@deck = @hearts + @clubs + @spades  + @diamonds 

	end

	def cards_left
 
		@deck 

	end

	def pull_card(player)

		# Randomly select card 
		num = rand(48)
		read_card = @deck[num]

		# This cycle prevents repeats 
		used_cards = 0
		while read_card == "next" || used_cards == 44
			num = rand(44)
			read_card = @deck[num]
			used_cards += 1
		end

		# Determines suit of card 
		if read_card.include? "h" 
			suit = "Hearts"
			read_card.delete! "h"
		elsif read_card.include? "c" 
			suit = "Clubs"
			read_card.delete! "c"
		elsif read_card.include? "s"
			suit = "Spades"
			read_card.delete! "s"
		elsif read_card.include? "d" 
			suit = "diamonds"
			read_card.delete! "d"
		end
										
		# Adds to total of player or dealer depending on turn  
		if read_card == "j"
			value = 10
			pulled = "Jack"
		elsif read_card == "q"
			value = 10
			pulled = "Queen"
		elsif read_card == "k"
			value = 10
			pulled = "King"
		elsif read_card == "a"
			pulled = "Ace"
				if player == true
					puts "Would you like your Ace to be valued at 1 or 11?"
					answer3 = gets.chomp.to_i
					case answer3
					when 1 then value = 1
					when 11 then value = 11
					else
						"I don't follow, it looks like you had one too many."
					end
				else
					value = 1
				end
		else 
			pulled = read_card
			value = read_card.to_i
		end
		# Take card out of play
		@deck[num] = "next"

		# Tells player of card 


		if player == true
			puts "You got a #{pulled} of #{suit}."
		else
			puts "Dealer got a #{pulled} of #{suit}."
		end

		return value 
	end

end


def prompt(total_hand, total_dealer, player, hits)
	puts "Please enter:\nRules\nPlay"
	answer = gets.chomp.downcase
	case answer
	when "play" then game(total_hand, total_dealer, player, hits)
	when "rules" then puts "Blackjack is played with one or more standard 52-card decks, with each denomination assigned a point value. The cards 2 through 10 are worth their face value. Kings, queens, and jacks are each worth 10, and aces may be used as either 1 or 11. The object for the player is to draw cards totaling closer to 21, without going over, than the dealer's cards.  The dealer must draw more cards to any total of 16 or less and must stand on any total of 17 or more. \n\nEach player and the dealer are given two cards.\n The player can then Hit: If you hit, you take another card or cards in hopes of getting closer to 21. If the player's total exceeds 21 after hitting, the player is said to Bust and loses the game.  You may only hit twice.\nStand: If you stand, you elect to draw no more cards in hopes that the current total will beat the dealer. "
		prompt(total_hand, total_dealer, player, hits)
	else 
		"I don't follow.  Maybe you had one too many."
	end
end


def check_win(total_hand, total_dealer, player, hits, deck)

	if total_hand > 21
		puts "You have #{total_hand}."
		puts "You're over 21, that's a bust."
	elsif total_dealer > 21
		puts "Swearengen has #{total_dealer}."
		puts "The dealer busted! You win."
	elsif hits != 2
		hit_or_stand(total_hand, total_dealer, player, hits, deck)
	else
		if total_hand > total_dealer
			puts "You got closer to 21 than the dealer!  You win."
		elsif total_hand < total_dealer
			puts "Swearengen got closer to 21 than the dealer!  You lose."
		else
			puts "Swearengen smiles wide, 'House rules. I win.'"
		end
	end

end

def hit_or_stand(total_hand, total_dealer, player, hits, deck)

	if hits != 2
	puts "Would you like to Hit or Stand?"
	answer2 = gets.chomp.downcase
		case answer2 
		when "hit"
			hits += 1
			total_hand += deck.pull_card(true)	
			puts "You have #{total_hand}."
			puts "Swearengen has #{total_dealer}."
			check_win(total_hand, total_dealer, true, hits, deck)
		when "stand" 
			if total_hand > total_dealer
				puts "You got closer to 21 than the dealer!  You win."
			elsif total_hand < total_dealer
				puts "Swearengen got closer to 21 than the dealer!  You lose."
			end
		else
			puts "I didn't understand you."
			hit_or_stand(total_hand, total_dealer, true, hits, deck)
		end
	end



end


def game(total_hand, total_dealer, player, hits)
	house = Deck.new

	while total_dealer < 17
		total_dealer += house.pull_card(false)
	end
	puts "Swearengen gives a dry smile,'I got #{total_dealer}.'"

	total_hand += house.pull_card(true)	
	total_hand += house.pull_card(true)
	puts "You have #{total_hand}."

	check_win(total_hand, total_dealer, true, hits, house)


end


total_hand = 0
total_dealer = 0
hits = 0 

puts "My name is Swearengen, and welcome to my Blackjack table.  Enjoy a drink on the house."
prompt(total_hand ,total_dealer ,false, hits)

