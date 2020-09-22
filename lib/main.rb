require_relative 'planet'
require_relative 'solar_system'
require "colorize"

def planet_details(solar_system)
  puts "Choose a planet do you wish to learn about:"
  user_unput = gets.chomp.downcase

  planet_to_learn = solar_system.find_planet_by_name(user_unput)

  puts planet_to_learn.summary
end

def add_planet(solar_system)
  puts "\nWhat is the name of the planet you wish to add to the solar system?".colorize(:blue)
  name = gets.chomp.capitalize

  puts "Let's gather some more information on the planet!".colorize(:blue)
  print "Color: "
  color = gets.chomp
  print "Mass(kg): "
  mass_kg = gets.chomp.to_f
  print "Distance from the Sun(km): "
  distance_from_sun = gets.chomp.to_f
  print "Fun Fact: "
  fun_fact = gets.chomp

  # create instance of the new planet
  new_planet = Planet.new(name, color, mass_kg, distance_from_sun, fun_fact)

  # add new planet to the solar_system
  solar_system.add_planet(new_planet)
end


def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'It is the only planet known to support life.')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.105e8, 'The planet is named after the Roman God of war.' )
  venus = Planet.new('Venus', 'bright white', 4.867e24, 1.079e8, 'A day on Venus is longer than a year.' )

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)

  puts "Welcome to the Sol Solar System!".colorize(:blue)
  puts "To continue, please enter 'list planets'".colorize(:light_blue)
  puts "If you would like to exit, please enter 'exit'.".colorize(:light_blue)
  user_input = gets.chomp.downcase

  while user_input != "exit"
    if user_input == "list planets"
      list = solar_system.list_planets
      puts "\n~~~~~~~~~~~~~~~~~~~~~~".colorize(:yellow)
      puts list.colorize(:yellow)
      puts "~~~~~~~~~~~~~~~~~~~~~~".colorize(:yellow)
    elsif user_input == "planet details"
      # invoke a separate method that will ask them for the name of the planet
      # display details for that planet
      planet_details(solar_system)
    elsif user_input == "add planet"
      # invoke a separate method that will
      # ask the user for details about the planet
      # create a new instance of planet
      # add it to the solarsystem
      add_planet(solar_system)
    else
      raise ArgumentError, 'Not an option'
    end

    puts "\nWhat would you like to do next?\n".colorize(:blue)
    puts "1. list planets"
    puts "2. planet details"
    puts "3. add planet"
    puts "4. exit\n\n"
    puts "Please choose an option: ".colorize(:blue)
    user_input = gets.chomp.downcase
  end

end

main