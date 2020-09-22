require_relative 'planet'
require_relative 'solar_system'

def planet_details(solar_system)
  puts "What planet do you wish to learn about?"
  user_unput = gets.chomp.downcase

  planet_to_learn = solar_system.find_planet_by_name(user_unput)

  puts planet_to_learn.summary
end


def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'It is the only planet known to support life.')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.105e8, 'The planet is named after the Roman God of war.' )
  venus = Planet.new('Venus', 'bright white', 4.867e24, 1.079e8, 'A day on Venus is longer than a year.' )

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)

  puts "Welcome to the Sol Solar System!"
  puts "To continue, please enter 'list planets'"
  puts "If at anytime you would like to exit, please enter 'exit'."
  user_input = gets.chomp.downcase

  while user_input != "exit"
    if user_input == "list planets"
      list = solar_system.list_planets
      puts "\n~~~~~~~~~~~~~~~~~~~~~~"
      puts list
      puts "~~~~~~~~~~~~~~~~~~~~~~"
    elsif user_input == "planet details"
      # invoke a separate method that will ask them for the name of the planet
      # display details for that planet
      planet_details(solar_system)
    # elsif user_input == "add planet"
    #   #   # invoke a separate method that will
    #   #   # ask the user for details about the planet
    #   #   # create a new instance of planet
    #   #   # add it to the solarsystem
    end

    puts "\nWhat would you like to do next?"
    puts "1. list planets"
    puts "2. planet details"
    puts "3. add planet"
    puts "4. exit"
    user_input = gets.chomp.downcase




  end
  # list = solar_system.list_planets
  # puts list
  #
  # found_planet = solar_system.find_planet_by_name('Earth')
  #
  # puts found_planet
  # puts found_planet.summary

  # puts earth.summary
  # puts mars.summary
end

main