# main.rb
require_relative 'planet'
require_relative 'solar_system'

def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue', 124, 99999, 'mostly water')
  venus = Planet.new('Venus', 'yellow', 1111, 3333, 'is a Russian Planet')
  mars = Planet.new('Mars','red', 2345, 6789, 'it is deadly')

  solar_system.add_planet(earth)
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)

  puts solar_system.list_planets

  found_planet = solar_system.find_planet_by_name('Mars')
  puts found_planet
  puts found_planet.summary

end

main