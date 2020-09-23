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
  print "Enter name of Planet: "
  input = gets.chomp

  # don't exit until name of findable planet is entered
  while solar_system_obj.find_planet_by_name(input).nil? do
    print "Planet not found in Solar System. Please try again: "
    input = gets.chomp
  end

  return solar_system_obj.find_planet_by_name(input)
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
  return true
end

# get user input for two planets CURRENTLY in the solar system and return the distance between them
# returns a 3 element array that allows for printing a string stating the distance between two planets.
def user_input_distance(solar_system_obj)
  puts "ENTER FIRST PLANET"
  planet1 = get_planet_detail(solar_system_obj)

  puts "ENTER SECOND PLANET"
  planet2 = get_planet_detail(solar_system_obj)

  return [planet1.name, planet2.name, solar_system_obj.distance_between(planet1.name, planet2.name)] # name of planets and distance between them
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
  puts '|4. FIND THE DISTANCE BETWEEN TWO PLANETS (IF LINED UP IN STRAIGHT LINE)|'
  puts '|5. EXIT                                                                |'
  puts '+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+'
  print "Enter your selection: "
  user_input = gets.chomp.to_i

  while user_input != 5 do
    case user_input
    when 1 # list planets
      puts "---------------------------"
      puts "LISTING PLANETS ..."
      puts solar_system.list_planets
      puts "---------------------------"
    when 2 # planet details
      puts "---------------------------"
      puts "GETTING PLANET DETAILS ..."
      planet_det = get_planet_detail(solar_system)
      puts planet_det.summary
      puts "---------------------------"
    when 3 # add planet
      puts "---------------------------"
      puts "ADDING PLANET ..."
      user_add_planet(solar_system)
      puts "---------------------------"
    when 4 # distance between two planets
      puts "---------------------------"
      puts "GETTING DISTANCE BETWEEN TWO PLANETS ..."
      distance_info = user_input_distance(solar_system)
      puts "Assuming they are lined up in a straight line, the distance between %s and %s is %.2f" % distance_info
      puts "---------------------------"
    when 5 # exit case
      break
    else # invalid input
      print "INVALID INPUT. "
    end
    puts "CURRENTLY YOU CAN:\nEnter 1 to LIST PLANETS\nEnter 2 to GET PLANET DETAILS\nEnter 3 to ADD A PLANET\nEnter 4 to FIND THE DISTANCE BETWEEN TWO PLANETS\nEnter 5 to EXIT"
    print "Select an option: "
    user_input = gets.chomp.to_i
  end

  puts "Thank you for using CLISSIN. See you Space Cowpoke!"

end

main