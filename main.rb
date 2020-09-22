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


  puts "Welcome to the Solar System!"

  while true
    puts "\n"
    puts "Please enter 'list planets', 'planet details', or 'add planet'"
    puts "Press 'exit' to quit at any time"
    input = gets.chomp

    case input
      when "list planets"
        puts solar_system.list_planets
      when "planet details"
        puts "Please enter a planet name for more details."
        planet_name = gets.chomp.capitalize!
        found_planet = solar_system.find_planet_by_name(planet_name)
        puts found_planet.summary

      when "add planet"
        puts "What is the name of the planet?"
          name = gets.chomp.capitalize!
        puts "What color is it?"
          color = gets.chomp.downcase
        puts "What is the planet's mass in kg?"
          mass_kg = gets.chomp.to_i
        puts "How far is the planet from the sun in km?"
          distance_from_sun_km = gets.chomp.to_i
        puts "What's a fun fact about this planet?"
          fun_fact = gets.chomp
        solar_system.add_planet(Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact))
      when "exit"
        break
      else
        puts "Invalid input"
    end
  end
end

main