require_relative "planet"
require_relative "solar_system"

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  jupiter = Planet.new('Jupiter', 'pink-ish', 7.972e24, 3.496e8, 'Rings man')

  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(earth)
  solar_system.add_planet(jupiter)
  puts solar_system.list_planets

  found_planet = solar_system.find_planet_by_name("Earth")
  puts found_planet.summary

end

main