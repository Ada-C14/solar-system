require_relative 'planet'
require_relative 'solar_system'

# ask user for specific planet and return the summary for that planet
# if that planet is not in the solar system, let user know
def get_planet_details(solar_system)
  puts "\nWhat planet would you like to learn more about?"
  planet = gets.chomp
  # planet_object will either be a Planet Object or false
  planet_object = solar_system.find_planet_by_name(planet)
  # return the summary if Planet Object otherwise return a string explaining to user.
  planet_object ? planet_object.summary : "This planet doesn't exist in the Solar System yet. You can add a new one if you'd like."

end

# add a user inputted planet to the solar system
def add_planet(solar_system)
  puts "\nPlease provide a Planet name"
  name = gets.chomp
  puts "What color is #{name}?"
  color = gets.chomp
  puts "What is the mass in kg of #{name}?"
  mass_kg = gets.chomp.to_f
  puts "How far is this planet from the sun in km?"
  distance = gets.chomp.to_f
  puts "Last step, please provide a fun fact for #{name}!"
  fun_fact = gets.chomp
  planet = Planet.new(name, color, mass_kg, distance, fun_fact)
  solar_system.add_planet(planet)
end

# find the distance between two user inputted planet names
def find_distance(solar_system)
  puts "\nPlease input two planets to find the distance between them"
  print "planet 1 => "
  planet_1 = gets.chomp
  print "planet_2 => "
  planet_2 = gets.chomp
  distance = solar_system.distance_between(planet_1, planet_2)
  puts "The distance between #{planet_1} and #{planet_2} is #{distance} km"
end

def list_options
  puts "\nPlease choose from the options below:"
  puts "\t1. list planets (list)"
  puts "\t2. planet details (details)"
  puts "\t3. add planet (add)"
  puts "\t4. find distance (distance)"
  puts "\t5. exit"
end

def initialize_solar_system
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mercury = Planet.new('Mercury', 'dark gray', 3.285e23, 5.790e7, "Planet named after Greek god Hermes, the mediator between gods and mortals")
  venus = Planet.new('Venus', 'white', 4.867e24, 1.082e8, "Does not have any moons or rings")

  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  return solar_system
end

def main
  # create SolarSystem and add some planets
  solar_system = initialize_solar_system

  puts "Hello! Welcome to the Solar System."

  while true
    list_options
    puts "what would you like to do?"

    input = gets.chomp.downcase
    case input
    when "list planets", 1, "list"
      puts solar_system.list_planets
    when "planet details", 2, "details"
      puts get_planet_details(solar_system)
    when "add planet", 3, "add"
      p add_planet(solar_system)
      puts solar_system.list_planets
    when "find distance", 4, "distance"
      find_distance(solar_system)
    when "exit", 5
      puts "Thanks for visiting our Solar System!"
      break
    else
      puts "Not sure what that means."
    end
  end
end

# call method to run program
main
