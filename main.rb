require_relative 'planet.rb'
require_relative 'solar_system.rb'

# create_a_solar_system

def main

  addi = SolarSystem.new('P.O.M.')
  phoenix = Planet.new('Phoenix', 'fire red', 1,  2, '2 years old')
  justice = Planet.new('Justice', 'golden brown', 2,  3, '800 years old')
  taylor = Planet.new('Taylor', 'sky blue', 3,4, 'deserved better')

  addi.add_planet(phoenix)
  addi.add_planet(justice)
  addi.add_planet(taylor)

  found_planet = addi.find_planet_by_name('Phoenix')

  puts found_planet.name
  puts found_planet.summary

  loop = true
  while loop
    puts "Would you like to build a planet? Y/N"
    builder = gets.chomp.upcase
    when builder = 'Y'
  end

  loop = true
  while loop
    puts "Would you like to see a list of planets? Y/N."
    user_input = gets.chomp.upcase
    if user_input == 'Y'
      puts addi.list_planets
    elsif user_input  == 'N'
      puts "Ok.  Would you like to EXIT then? Y/N."
      user_input_2 = gets.chomp.upcase
      if user_input_2 == 'Y'
        loop = false
      elsif
      puts "Let's see if we can find something else."
      end
    elsif user_input != 'Y' || user_input != 'N'
      raise ArgumentError, 'Only answers accepted are Y or N. Exiting.'
    end
    # ask user if they'd like to see a list of planets or exit the program
    # add planet_details option - should call separate method - they name a planet
    # it delivers details
    # add_planet : ask user for planet details,
    # create new instance of planet, add planet to solar system
  end
end

main




