puts "Combat Flip Flops is a company trying to grow business in Afghanistan.  Visit http://www.combatflipflops.com/ to learn more."

# Goal is to run a function 10 different ways 

def flipFlop(cost, color)
	case color.downcase 
	when "yellow" 
		puts "Order the AK-47 flip flop for $#{cost}"
	when "red" 
		puts "Order the Tuck Tuck flip flop for $#{cost}"
	when "blue" 
		puts "Order the Posidon flip flop for $#{cost}"
	when "black" 
		puts "Order the Bombshell Dark flip flop for $#{cost}"
	else
		puts "As of 22MAR14 they didn't have #{color}.  Check their site for updates."
	end
end

# Method 1
flipFlop(70, "blue")

# Method 2
flipFlop(50 + 20, "black")

# Method 3
current_cost = 70
current_color = "yellow"
flipFlop(current_cost, current_color)

# Method 4
flipFlop(30 + 40, "r" + "e" + "d")

# Method 5
flipFlop("Seventy", "green")