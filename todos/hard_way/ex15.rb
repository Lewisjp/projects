filename = ARGV.first  
=begin 

A variable must be provided when loading this in terminal because its opened on line 9.

=end 

prompt = "> "  
txt = File.open(filename)  #gives txt variable the value of the filename content


puts "Here's your file: #{filename}"
puts txt.read() #reads the value of the variable txt
txt.close()  #finished with a .read() method, slap a .close() on that variable

puts "I'll also ask you to type the file name again:"
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)

puts txt_again.read()
txt_again.close()


=begin 

If STDIN. is removed from gets.chomp() you get error:
> ex15.rb:18:in `initialize': No such file or directory - This is stuff I typed into a file. (Errno::ENOENT)
	from ex15.rb:18:in `open'
	from ex15.rb:18:in `<main>'

=end 

