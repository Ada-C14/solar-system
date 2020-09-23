require_relative 'planet'
require_relative 'solar_system'

def main
earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
mars = Planet.new('Mars', 'red', 6.4169e23, 2.2794e8, 'Mars had water in the ancient past')

solar_system = SolarSystem.new('Sun')

solar_system.add_planet(earth)
solar_system.add_planet(mars)

list = solar_system.list_planets

# found_planet = solar_system.find_planet_by_name('Earth')
# puts found_planet
# puts found_planet.summary

def user_choice
  puts "What do you like to do?"
  puts "- list planets"
  puts "- planet details"
  puts "- add planet"
  puts "- exit"
end

def line
  puts "-" * 40
end


line
puts "Welcome to Solar System Planets"
line
user_choice


user_input = gets.chomp
until user_input == "exit"

  if user_input == "list planets"
    puts list
    line
    user_choice
    user_input = gets.chomp

  elsif user_input == "planet details"
    puts "Please enter the name of the Planet you like to know more about"
    user_planet_choice = gets.chomp
    found_planet = solar_system.find_planet_by_name(user_planet_choice)
    if found_planet
      puts found_planet.summary
      user_choice
      user_input = gets.chomp
    else
      puts "planet not found!"
    end

  elsif user_input == "add planet"
    puts "please enter the planet's name"
    planet_name = gets.chomp
    puts "please enter the planet's color"
    planet_color = gets.chomp
    puts "please enter the planet's mass in kg"
    planet_mass = gets.chomp
    puts "please enter the planet's distance from sun in km"
    planet_sun_distance = gets.chomp
    puts "please enter a fun fact about this planet"
    planet_fun_fact= gets.chomp

    user_planet = Planet.new(planet_name, planet_color, planet_mass, planet_sun_distance, planet_fun_fact)

    solar_system.add_planet(user_planet)
    list = solar_system.list_planets



    line
    user_choice
    user_input = gets.chomp
    end
end
end

main