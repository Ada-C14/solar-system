require_relative '../net'
require_relative 'solar_system'

# def main
#   earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
#   mars = Planet.new("Mars", "red", 6.39e23, 1.307e8, "where The Martian took place")
#   puts earth.summary
#   puts mars.summary
#
# end
#
# main

solar_system = SolarSystem.new("Sol")
earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
solar_system.add_planet(earth)

list = solar_system.list_planets
puts list

found_planet = solar_system.find_planet_by_name('Earth')
puts found_planet

puts found_planet.summary