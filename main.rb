# main.rb
require_relative 'planet'
require_relative 'solar_system'

def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue', 124, 99999, 'mostly water')
  venus = Planet.new('Venus', 'yellow', 1111, 3333, 'is a Russian Planet')
  mars = Planet.new('Mars','red', 2345, 6789, 'it is deadly')

  solar_system.add_planet(earth)
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)

  # def add_planet(planet)
  #   solar_system.add_planet(planet)
  # end

  # puts solar_system.list_planets

  # found_planet = solar_system.find_planet_by_name('Mars')
  # puts found_planet
  # puts found_planet.summary

  ###################################

  puts "Welcome to the solar system."
  puts "Please enter 'list planets' or 'exit' to continue."
  input = gets.chomp.downcase!

  until input = "list planets" || input = "exit"
    puts "Invalid input. Please enter 'list planets' or 'exit' to continue."
    input = gets.chomp.downcase!
  end

  if input == "list planets"
    puts solar_system.list_planets
  elsif input == "exit"
    exit!
  end

  puts "Please enter a planet name for planet details."
  planet_name = gets.chomp.capitalize!
  found_planet = solar_system.find_planet_by_name(planet_name)
  puts found_planet.summary

  puts "Would you like to add a planet to the solar system? Enter 'yes' or 'no'"
  input = gets.chomp.downcase!

  until input = "yes" || input = "no"
    puts "Invalid input. Please enter 'yes' or 'no' to continue."
    input = gets.chomp.downcase!
  end

  if input == "yes"
    puts "What is the name of the planet?"
      name = gets.chomp.capitalize!
    puts "What color is it?"
      color = gets.chomp.downcase!
    puts "What is the planet's mass in kg?"
      mass_kg = gets.chomp.to_i
    puts "How far is the planet from the sun in km?"
      distance_from_sun_km = gets.chomp.to_i
    puts "What's a fun fact about this planet?"
      fun_fact = gets.chomp

    new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
    # add_planet(new_planet)
    solar_system.add_planet(new_planet)

  elsif input == "no"
    exit
  end

  puts new_planet.summary
  puts solar_system.list_planets

end

main