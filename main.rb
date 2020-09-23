require_relative "planet"
require_relative "solar_system"
require "awesome_print"

def main

  mars = Planet.new("Mars", "red", "6.39 × 10^23", "210.58 million", "we might have to figure out how to live there if corporations keep ruining earth")
  puts mars.summary
  venus = Planet.new("Venus", "yellowish white", "4.867 × 10^24", "107.85 million", "doesn't have any moons :( ")
  puts venus.summary

  solar_system = SolarSystem.new("Orion")
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)

  # list = solar_system.list_planets
  # puts list
  #
  # found_planet = solar_system.find_planet_by_name("Mars")
  # puts found_planet


end




main