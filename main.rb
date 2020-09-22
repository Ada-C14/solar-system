require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'is only planet known to support life')
  mercury = Planet.new('Mercury', 'blue', 3.301e23, 6.966e7, 'is the smallest planet in our solar system and nearest to the Sun')
  venus= Planet.new('Venus', 'gold', 4.867e24, 1.078e8, 'is similar in size and structure to Earth, Venus has been called Earth\'s twin')
  mars= Planet.new('Mars', 'red-brown', 6.417e23, 2.092e8, 'has an even more active past')

  puts earth.summary
  puts mercury.summary

  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('venus')

  puts found_planet

  puts found_planet.summary

  puts solar_system.distance_between("earth", "mars")
end


main
