require_relative './jukebox.rb'

def run
  puts "\nWelcome to Ruby Console Jukebox!"
  puts "Enter a command to continue. Type 'help' for a list of commands."
  input = get_command  
  if input.downcase != "exit"
    run_command(input) unless input.downcase == "exit"
  end
end

def get_command  
  gets.strip
end

def run_command(command)
  case command
  when "help"
    show_help
  else
    jukebox(command)
  end
end

def show_help
  puts "\n\nNever worked a jukebox, eh? Pretty standard. Available commands are:\n"
  puts "'help' - shows this menu\n"
  puts "'list' - lists the whole song library\n"
  puts "'exit' - to leave the Jukebox"
  puts "or you can enter an artist's name to show that artist's songs\n\n\n"
  run
  # help = "Never worked a jukebox, eh? Pretty standard. Available commands are:\n"
  # help += "'help' - shows this menu\n"
  # help += "'list' - lists the whole song library\n"
  # help += "or you can enter an artist's name to show that artist's songs\n"
  # help = "or you can enter an artist's name to show that artist's songs\n"
  # puts help
end

run
