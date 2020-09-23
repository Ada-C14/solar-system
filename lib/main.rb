# Pauline Chane (@PaulineChane)
# Ada Developers Academy C14
# Solar System Assignment - main.rb Main Class
# 09/23/2020

# main.rb
require_relative 'planet'
require_relative 'solar_system'

# defs for control loop actions that take a little more time
def get_planet_detail(solar_system_obj)
  print "Enter name of Planet you wish to learn more about: "
  input = gets.chomp

  # don't exit until name of findable planet is entered
  while solar_system_obj.find_planet_by_name(input).nil? do
    print "Planet not found in Solar System. Please try again: "
    input = gets.chomp
  end

  # for CLI purposes, here is a puts statement, usually better to return a string and print it though
  puts solar_system_obj.find_planet_by_name(input).summary
end

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
  puts '|2. OBTAIN DETAILS ON A PLANET CURRENTLY IN SOLAR SYSTEM                |'
  puts '|9. EXIT                                                                |'
  print "Enter your selection: "
  user_input = gets.chomp.to_i

  while user_input != 9 do
    case user_input
    when 1
      puts "LISTING PLANETS ..."
      puts solar_system.list_planets
      print "Action complete. Enter 1 to LIST PLANETS again, 2 to GET PLANET DETAILS, or 9 to EXIT: "
    when 2
      puts "GETTING PLANET DETAILS ..."
      get_planet_detail(solar_system)
      puts "Action complete. Enter 1 to LIST PLANETS, 2 to GET PLANET DETAILS again, or 9 to EXIT: "
    when 9
      break
    else
      print "Invalid input. Enter 1 to LIST PLANETS, 2 to GET PLANET DETAILS, or 9 to EXIT: "
    end
    user_input = gets.chomp.to_i
  end

  puts "Thank you for using the CLISSIN. See you Space Cowpoke!"

end

main