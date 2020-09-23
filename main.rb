require_relative 'planet'
require_relative 'solar_system'


def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'Blue', 5.97237e24, 1.521e8, 'was once believed to be the centre of the universe.')
  mercury = Planet.new('Mercury', 'Dark Gray', 3.3011e23, 6.966e7, 'is the closest planet to the Sun.')
  venus = Planet.new('Venus', 'White', 4.8675e24, 1.078e8, 'a day is longer than a year')
  mars = Planet.new('Mars', 'Red', 6.417e23, 2.092e8, 'is home to the tallest mountain in the solar system.')

  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)

  #puts earth.summary

  list = solar_system.list_planets
  #puts list

  #found_planet = solar_system.find_planet_by_name('Earth')

  #puts found_planet
  #puts found_planet.summary

  user_choice = 0
  puts "Welcome to Solar System!"
  while user_choice != 2
    puts "What would you like to do? Please pick a number from 1 to 5.\n"
    puts "1.list planets\n2.exit\n3.planet details\n4.add a planet"
    user_choice = gets.chomp.to_i

    case user_choice
    when 1
      list = solar_system.list_planets
      puts "\n#{list}"
    when 2
      puts "Thank you for visiting Solar System, goodbye!"
      exit
    when 3
      puts solar_system.get_details
    when 4
      puts solar_system.add_planet_by_user
    else
      puts "Please re-enter your number's choice:"
    end
  end




end


main