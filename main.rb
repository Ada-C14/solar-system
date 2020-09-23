require_relative 'planet'
require_relative 'solar_system'

def main
  mercury = Planet.new("Mercury", "dark-gray", 3.3011e23, "%.1e" %58e6, "A year on Mercury is 88 Earth days.")
  saturn = Planet.new("Saturn", "pale-yellow and orange",5.638e26,"%.3e" %1.4935e9,"Saturn is the least dense planet in the Solar System.")
  puts mercury.summary
  puts saturn.summary

  solar_system = SolarSystem.new('Sun')
  solar_system.add_planet(mercury.name)
  solar_system.add_planet(saturn.name)
  puts solar_system.list_planets
  found_planet = solar_system.find_planet_by_name('mercury')
  puts found_planet
  puts found_planet.summary
end


main