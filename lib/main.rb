require_relative 'planet'
require_relative 'solar_system'

def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.105e8, 'The planet named after the Roman God of war.' )
  venus = Planet.new('Venus', 'bright white', 4.867e24, 1.079e8, 'A day on Venus is longer than a year.' )

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)

  list = solar_system.list_planets
  puts list

  # puts earth.summary
  # puts mars.summary
end

main