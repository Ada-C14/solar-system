require_relative 'planet.rb'
require_relative 'solar_system.rb'


def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  jupiter = Planet.new('Jupiter', 'orange-yellow', 50.24e34 , 5.496e8, 'Fastest spinning planet in the Solar System')

  solar_system.add_planet(earth)
  list = solar_system.list_planets
  puts list

  puts earth.summary
  puts jupiter.summary
end


main


