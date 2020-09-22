require_relative 'planet'
require_relative 'solar_system'

def get_planet_details(solar_system)
  puts "What planet would you like to learn more about?"
  planet = gets.chomp
  planet_object = solar_system.find_planet_by_name(planet)
  planet_object ? (return planet_object.summary) : (return "planet not found")
end

def add_planet(solar_system)
  puts "Please provide a Planet name"
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

def find_distance(solar_system)
  puts "Please input two planets to find the distance between them"
  puts "planet 1 => "
  planet_1 = gets.chomp
  puts "planet_2 => "
  planet_2 = gets.chomp
  distance = solar_system.distance_between(planet_1, planet_2)
  puts "The distance between #{planet_1} and #{planet_2} is #{distance} km"

end

def list_options
  puts "Please choose from the options below:"
  puts "\t- list planets"
  puts "\t- planet details"
  puts "\t- add planet"
  puts "\t- find distance"
  puts "\t- exit"
end

def initialize_solar_system
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mercury = Planet.new('Mercury', 'dark gray', 3.285e23, 5.790e7, "Planet named after Greek god Hermes, the mediator between gods and mortals")
  venus = Planet.new('Venus', 'white', 4.867e24,  1.082e8, "Does not have any moons or rings")

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
    puts "---------------"
    list_options
    puts "what would you like to do?"

    input = gets.chomp.downcase
    case input
    when "exit"
      break
    when "list planets"
      puts solar_system.list_planets
    when "planet details"
      puts get_planet_details(solar_system)
    when "add planet"
      add_planet(solar_system)
      puts solar_system.list_planets
    when "find distance"
      find_distance(solar_system)
    end
  end
end

# call method to run program
main