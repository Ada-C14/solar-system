# Pauline Chane (@PaulineChane)
# Ada Developers Academy C14
# Solar System Assignment - main.rb Main Class Driver/CLI methods
# 09/23/2020

# main.rb
require_relative 'planet'
require_relative 'solar_system'

# defs for control loop actions that take a little more time
# get detail for planet and account for invalid input
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

# get and validate user input for adding planet with new info
def user_add_planet(solar_system_obj)
  # prompt/input for all input parameters stored in individual variables
  print "Enter planet name: "
  name = gets.chomp

  print "Enter planet color: "
  color = gets.chomp

  # mass must be greater than 0
  print "Enter planet mass (in kg): "
  mass = gets.chomp.to_f

  while mass <= 0 do
    puts "Invalid mass (in kg) input - must be greater than zero"
    print "Enter planet mass (in kg): "
    mass = gets.chomp.to_f
  end

  # distance from sun must be greater than zero
  print "Enter planet's distance from the sun (in km): "
  distance_from_sun = gets.chomp.to_f

  while distance_from_sun <= 0 do
    puts "Invalid distance from sun (in km) input - must be greater than zero"
    print "Enter planet's distance from the sun (in km): "
    distance_from_sun = gets.chomp.to_f
  end

  print "Enter planet fun fact: "
  fun_fact = gets.chomp

  new_planet = Planet.new(name, color, mass, distance_from_sun, fun_fact)

  solar_system_obj.add_planet(new_planet)
end

# code for driver itself
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
  puts '|_____Please enter the NUMBER corresponding to your desired action:_____|'
  puts '|1. LIST PLANETS CURRENTLY IN SOLAR SYSTEM                              |'
  puts '|2. OBTAIN DETAILS ON A PLANET CURRENTLY IN SOLAR SYSTEM                |'
  puts '|3. ADD A PLANET TO THE SOLAR SYSTEM                                    |'
  puts '|9. EXIT                                                                |'
  print "Enter your selection: "
  user_input = gets.chomp.to_i

  while user_input != 9 do
    case user_input
    when 1
      puts "---------------------------"
      puts "LISTING PLANETS ..."
      puts solar_system.list_planets
      puts "---------------------------"
      print "ACTION COMPLETE. YOU CAN NOW:\nEnter 1 to LIST PLANETS again\nEnter 2 to GET PLANET DETAILS\nEnter 3 to ADD A PLANET\nEnter 9 to EXIT: "
    when 2
      puts "---------------------------"
      puts "GETTING PLANET DETAILS ..."
      get_planet_detail(solar_system)
      puts "---------------------------"
      print "ACTION COMPLETE. YOU CAN NOW:\nEnter 1 to LIST PLANETS\nEnter 2 to GET PLANET DETAILS again\nEnter 3 to ADD A PLANET\nEnter 9 to EXIT: "
    when 3
      puts "---------------------------"
      puts "ADDING PLANET ..."
      user_add_planet(solar_system)
      puts "---------------------------"
      print "ACTION COMPLETE. YOU CAN NOW:\nEnter 1 to LIST PLANETS\nEnter 2 to GET PLANET DETAILS\nEnter 3 to ADD ANOTHER PLANET\nEnter 9 to EXIT: "
    when 9
      break
    else
      print "INVALID INPUT. YOU CAN:\nEnter 1 to LIST PLANETS\nEnter 2 to GET PLANET DETAILS\nEnter 3 to ADD A PLANET\nEnter 9 to EXIT: "
    end
    user_input = gets.chomp.to_i
  end

  puts "Thank you for using CLISSIN. See you Space Cowpoke!"

end

main