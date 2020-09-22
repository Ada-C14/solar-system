# Pauline Chane (@PaulineChane)
# Ada Developers Academy C14
# Solar System Assignment - main.rb Main Class
# 09/23/2020

# main.rb
require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.4191e23, 2.279e8, 'Planet with the highest known mountain in its solar system - Olympus Mons')

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)

  list = solar_system.list_planets
  puts list
  # => Planets orbiting Sol
  # => 1.  Earth

  found_planet = solar_system.find_planet_by_name('EARTH')

  # found_planet is an instance of class Planet
  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>

  puts found_planet.summary
  # => Earth is a blue-green planet ...

  puts solar_system.distance_between("Earth", "Mars")
  # => 78300000.0

  puts solar_system.distance_between("Earth", "Venus").nil?
  # => true
end

main