require_relative 'planet'
require_relative 'solar_system'
# require 'prettyprint'
def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.name
  puts earth.fun_fact

  mars = Planet.new('Mars', 'red', 6.39e23, 141.6, 'Mars has two moons named after horses Phobos (fear) and Deimos (panic)')
  puts mars.name
  puts mars.fun_fact

  puts mars.summary

  solar_system = SolarSystem.new("Sun")
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)

  puts solar_system.list_planets

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet

  puts found_planet.summary
end

main
