require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')
  mars = Planet.new('Mars', 'red', 5.972e24, 1.496e8, 'aliens?')
  #
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)

  # p earth.summary
  list = solar_system.list_planets
  puts list

  planet_info = solar_system.find_planet_by_name('earth')
  puts planet_info

end

main