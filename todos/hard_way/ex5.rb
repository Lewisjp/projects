class Human

	def initialize 

    puts "Whats your name?"
    @my_name = gets.chomp.capitalize
    
    puts "How old are you?"
    @my_age = gets.chomp.to_i

    puts "Whats your height in inches?"
    @my_height = gets.chomp.to_i

    puts "How much do you weigh in lbs?"
    @my_weight = gets.chomp.to_i

    puts "Eye color?"
    @my_eyes = gets.chomp

    puts "Hair color?"
    @my_hair = gets.chomp

    # puts "What color are your teeth?"
    # @my_teeth = gets.chomp
    @my_teeth = "white"

    list_stats()

  end

  def list_stats

    puts "Let's talk about %s." % @my_name
    puts "He's %d inches tall." % @my_height
    puts "That's also #{inch_to_centimeters(@my_height).round(2)} centimeters."
    puts "He's %d pounds." % @my_weight 
    puts "In that's #{lbs_to_kilos(@my_weight).round(2)} kilos." 
    puts "Actually, thats not too heavy."
    puts "He's got %s eyes and %s hair." % [@my_eyes, @my_hair]
    puts "His teeth are usually %s depending on the coffee." % @my_teeth

    puts "If I add %d, %d and %d I get %d." % [@my_age, @my_height, @my_weight, @my_age + @my_height + @my_weight]

	end

  def inch_to_centimeters(inches)
    return inches * 2.54
  end

  def lbs_to_kilos(lbs)
    return lbs / 2.2046 + lbs % 2.2046
  end

end

Human.new

=begin

Ruby format sequences 

b - Convert argument as a binary number. 
c - Argument is the numeric code for a single character. 
d - Convert argument as a decimal number. 
E - Equivalent to `e', but uses an uppercase E to indicate the exponent. 
e - Convert floating point argument into exponential notation with one digit before the decimal point. The precision determines the number of fractional digits (defaulting to six). 
f - Convert floating point argument as [-]ddd.ddd, where the precision determines the number of digits after the decimal point. 
G - Equivalent to `g', but use an uppercase `E' in exponent form. 
g - Convert a floating point number using exponential form if the exponent is less than -4 or greater than or equal to the precision, or in d.dddd form otherwise. 
i - Identical to `d'. 
o - Convert argument as an octal number. 
s - Argument is a string to be substituted. If the format sequence contains a precision, at most that many characters will be copied. 
u - Treat argument as an unsigned decimal number. 
X - Convert argument as a hexadecimal number using uppercase letters. 
x - Convert argument as a hexadecimal number. 



=end