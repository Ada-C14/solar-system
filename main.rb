# main.rb
require_relative 'planet'
require_relative 'solar_system'


def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life!')
  earth_summary = earth.summary
  puts earth_summary

  solar_system = SolarSystem.new('Solar')
  solar_system.add_planet('Mercury')
  solar_system.add_planet('Venus')
  solar_system.add_planet('Earth')
  solar_system.add_planet('Mars')
  solar_system.add_planet('Jupiter')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life!')
  solar_system.add_planet(earth)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  # puts found_planet.summary

end

main

# puts "Tell me a planet name"
#
# loop_out = false
# until loop_out
#
# user_input = gets.chomp
# some_new_planet = Planet.new(user_input)
# puts some_new_planet.summary

# end
