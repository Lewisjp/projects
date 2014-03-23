=begin 
Go to github.com with your favorite web browser and search for "ruby".
Pick a random project and click on it.
Click on the Source tab and browse through the list of files and directories until you find a .rb file.
Start at the top and read through it, taking notes on what you think it does.
If any symbols or strange words seem to interest you, write them down to research later.
That's it. Your job is to use what you know so far and see if you can read the code and get a grasp of what it does. Try skimming the code first, and then read it in detail. Maybe also try taking very difficult parts and reading each symbol you know outloud.

https://github.com/seanreed1111/blackjack/blob/master/PlayingCard.rb
=end 

# Ruby class object PlayingCard
class PlayingCard
	#attr_accessor allows the following variables to be used by all functions in the class object.
    attr_accessor :suit, :value, :rank,:image_url
    #PlayingCard.new(variable, variable, variable) will set off this function.
    def initialize(suit, rank, value)
    	# @variable indicated it is an instance variable.  
        @suit = suit
        @rank = rank
        @value = value
    end

    def show #displays the card data
        print" #{self.rank} of #{self.suit}" 
    end

    def is_ace? # checks if its an ace.
        @rank == "A"
    end

end
