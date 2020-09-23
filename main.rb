require_relative 'planet'
require_relative 'solar_system'

def main

end

solar_system = SolarSystem.new("Sol")
earth = Planet.new("earth", "blue-green",1,2,"I live on it")
solar_system.add_planet(earth)

# list = solar_system.list_planets
# puts list
# main

found_planet = solar_system.find_planet_by_name("earth")
puts found_planet

puts found_planet.summary

main