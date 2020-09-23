require 'byebug'
require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new(
      'Earth',
      'blue-green',
      5.972e+24,
      149.6e+6,
      "Only planet known to support life"
  )

  moon = Planet.new(
      'Moon',
      'grey',
      7.348e+22,
      150e+6,
      "Earth's only natural satellite"
  )

  ##############################################

  solar_system = SolarSystem.new('Sun')

  solar_system.add_planet(earth)
  solar_system.add_planet(moon)

  ##############################################

  continue = true
  while continue
    puts "This program has created a solar system with several planets. From here, you can:\n"
    puts "1. List the planets in the solar system (enter 1)\n"
    puts "2. Display details about a single planet in the system (enter 2)\n"
    puts "3. Add a planet to the system (enter 3)\n"
    puts "4. Calculate the distance between two planets (in km) (enter 4)\n"
    puts "5. Exit (enter 5)\n"

    response = gets.chomp.to_i

    case response
    when 1
      puts solar_system.list_planets
    when 2
      puts "Please enter the name of the planet you'd like to know more about:"
      planet_inspect = gets.chomp
      planet_inspect = solar_system.find_planet_by_name(planet_inspect)
      puts planet_inspect.summary
    when 3
      solar_system.user_add_planet
    when 4
      puts "Please enter the name of the first planet:"
      planet_1 = gets.chomp
      puts "Please enter the name of the second planet:"
      planet_2 = gets.chomp

      solar_system.find_planet_by_name(planet_1)
      solar_system.find_planet_by_name(planet_2)
      distance = solar_system.distance_between(planet_1, planet_2)
      puts "The distance between #{planet_1} and #{planet_2} is approximately: #{distance} km."
    when 5
      puts "OK! Terminating program."
      continue = false
    else
      puts "That was not a valid response."
    end
  end
end

main