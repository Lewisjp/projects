"I\'m 6'2\" tall." #escapes doube-quote inside string
'I am 6\'2" tall.' #escapes single-quote inside string

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishes
\t* Catnip\n\t* Grass
MY_HEREDOC

baby_cat = <<Anything
I'll do a list: 
\a\t* Alert with tab\r* Carriage return (covers up previous text on line)
\n\t* New line and tab\n\s* New line and space
Anything

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat
puts baby_cat


=begin
	
Other escape Sequences

\' - single quote 
\" – double quote
\\ – single backslash
\a – bell/alert
\b – backspace

\r – carriage return =  used to reset a device's position to the beginning of a line of text.

\n – newline
\s – space
\t – tab



=end