#main.rb

require_relative 'planet'
require_relative 'solar_system'

def welecome_menu
  puts "Welcome to make your own planet!"
  puts "What would you like to do next? You can choose from: \n 1. List Planets \n 2. Planet Details \n 3. Add Planet \n 4. Exit"
  main
  p welcome_menu
end

def main
  earth=Planet.new('Earth', 'blue-green',5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth
end

# def summary
#
# end