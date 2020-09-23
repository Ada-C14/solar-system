require_relative 'planet'
require_relative 'solar_system'


def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet *we* know to support humans', "humans")
  solar_system.add_planet(earth)

  list = solar_system.list_planets
  puts list

  puts earth.summary

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  
  puts found_planet.summary

end

main
