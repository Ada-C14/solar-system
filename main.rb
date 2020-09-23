require_relative 'lib/planet'
require_relative 'lib/solar_system'

def main
  puts "Wave 1"
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.fun_fact
  pluto = Planet.new('Pluto', 'unknown', 5.972e24, 1.496e8, 'Unknown')
  puts pluto.name
  puts earth.summary

  puts "Wave 2"
  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(earth)
  solar_system.add_planet(pluto)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')
  puts "This is the planet that was found: #{found_planet}"
  puts found_planet.summary
end

main