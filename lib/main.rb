# Pauline Chane (@PaulineChane)
# Ada Developers Academy C14
# Solar System Assignment - main.rb Main Class
# 09/23/2020

# main.rb
require_relative 'planet'
require_relative 'solar_system'

def main
  # create base solar_system with some planets
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.4191e23, 2.279e8, 'Planet with the highest known mountain in its solar system - Olympus Mons')

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)

  # intro to CLI interface
  puts '+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+'
  puts 'WELCOME TO CLISSIN (Command Line Interface Solar System Info Navigation)!'
  puts '+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+'
  puts '|                              MENU SELECT                              |'
  puts '|_____Please enter the number corresponding to your desired action:_____|'
  puts '|1. LIST PLANETS CURRENTLY IN SOLAR SYSTEM                              |'
  puts '|9. EXIT                                                                |'
  print "Enter your selection: "
  user_input = gets.chomp.to_i

  while user_input != 9 do
    if user_input == 1
      puts "LISTING PLANETS.... "
      puts solar_system.list_planets
      print "Action complete. Enter 1 to LIST PLANETS again or 9 to EXIT: "
    elsif user_input != 9
      print "Invalid input. Enter 1 to LIST PLANETS or 9 to EXIT: "
    end
    user_input = gets.chomp.to_i
  end

  puts "Thank you for using the CLISSIN. See you Space Cowpoke!"

end

main