require_relative 'lib/planet'
require_relative 'lib/solar_system'

def main
  # earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  # puts earth.fun_fact

  pluto = Planet.new('Pluto', 'unknown', 5.972e24, 1.496e8, 'Unknown')
  puts pluto.name

  # puts earth.summary

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)

  list = solar_system.list_planets
  puts list
end

main