require_relative 'planet'
require_relative 'solar_system'

def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'It is the only planet known to support life.')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.105e8, 'The planet named after the Roman God of war.' )
  venus = Planet.new('Venus', 'bright white', 4.867e24, 1.079e8, 'A day on Venus is longer than a year.' )

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)

  puts "Welcome to the Sol Solar System!"
  puts "To continue, please enter 'list planets'"
  puts "If at anytime you would like to exit, please enter exit"
  user_input = gets.chomp.downcase

  while user_input != "exit"
    if user_input == "list planets"
      list = solar_system.list_planets
      puts list
      elsif user_input == ""
    end
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