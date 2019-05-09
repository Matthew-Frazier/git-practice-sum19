require "colorize"

def puts_git(cmd)
  puts `git #{cmd} -h`
end

def menu
  puts "MAIN MENU".colorize(:cyan)
  puts "1: Enter git command".colorize(:yellow)
  puts "2: Exit".colorize(:yellow)
  choice = gets.strip.to_i
  # sleep(3) #makes command wait for (seconds)
  print `clear`
  case choice
  when 1
    puts "Enter git command".colorize(:green)
    puts_git(gets.strip)
    menu
  when 2
    puts "Thanks for using our program!".colorize(:blue)
    sleep(2)
    exit
  else
    puts "Invalid Input".colorize(:red)
    sleep(2)
    print `clear` # `clear` will activate the clear command in the terminal
    menu
  end
end

menu