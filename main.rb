require_relative 'planet'
require_relative 'solar_system'

earth = Planet.new("Earth",'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

puts earth.summary()
puts earth.summary()
solar_system = SolarSystem.new('Sol')

solar_system.add_planet(earth)
solar_system.add_planet(earth)

list = solar_system.list_planets
puts list

found_planet = solar_system.find_planet_by_name("earth")

# found_planet is an instance of class Planet
puts found_planet
# => #<Planet:0x00007fe7c2868ee8>

puts found_planet.summary
# => Earth is a blue-green planet ...