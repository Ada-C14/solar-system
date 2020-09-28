require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.summary

  mars = Planet.new('Mars', 'red-orange', 6.39e23, 228526848, 'named after the roman god of war' )
  puts mars.summary

  list = solar_system.list_planets
  puts list

end

main
