require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'dark gray', 3.285e23, 5.790e7, "Planet named after Greek god Hermes, the mediator between gods and mortals")

  puts earth.summary
  puts mars.summary
end

main

solar_system = SolarSystem.new('Sol')

earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
solar_system.add_planet(earth)

list = solar_system.list_planets
puts list

found_planet = solar_system.find_planet_by_name('Mars')

# found_planet is an instance of class Planet
p found_planet
# => #<Planet:0x00007fe7c2868ee8>

#puts found_planet.summary
# => Earth is a blue-green planet ...