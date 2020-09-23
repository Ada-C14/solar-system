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

  # p "Here's a fun fact about the #{earth.name}: #{earth.fun_fact}"
  # p "Here's a fun fact about the #{moon.name}: #{moon.fun_fact}"

  # puts earth.summary
  # puts moon.summary

  ##############################################

  solar_system = SolarSystem.new('Sun')

  solar_system.add_planet(earth)
  solar_system.add_planet(moon)

  # planet_list = solar_system.list_planets
  # puts planet_list

  ##############################################

  # found_planet = solar_system.find_planet_by_name('eaRth')
  # # found_planet = solar_system.find_planet_by_name('Jupiter')
  #
  # # found_planet is an instance of class Planet
  # puts found_planet
  # # => #<Planet:0x00007fe7c2868ee8>
  #
  # puts found_planet.summary
  # # => Earth is a blue-green planet ...
  #
  # puts "The distance between these two planets is: #{solar_system.distance_between('earth', 'moon')} km."

  continue = true
  while continue
    puts "This program has created a solar system with several planets. From here, you can:\n"
    puts "1. List the planets in the solar system (enter 1)\n"
    puts "2. Display details about a single planet in the system (enter 2)\n"
    puts "3. Exit (enter 3)\n"
    response = gets.chomp.to_i
    if response == 1
      puts solar_system.list_planets
    elsif response == 2
      puts "Please enter the name of the planet you'd like to know more about:"
      planet_inspect = gets.chomp
      planet_inspect = solar_system.find_planet_by_name(planet_inspect)
      puts planet_inspect.summary
    elsif response == 3
      puts "OK! Terminating program."
      continue = false
    else
      puts "That was not a valid response."
    end
  end

end

main