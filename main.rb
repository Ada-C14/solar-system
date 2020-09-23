require_relative "Planet"
require_relative "Solar_System"

def main
  solar_system = SolarSystem.new('Sol')

  mercury = Planet.new( 'Mercury', 'dark gray', 3.285e23, 57.9, 'Mercury is shrinking!')
  solar_system.add_planet(mercury)

  venus = Planet.new('Venus', 'white', 4.867e24, 108.2, 'A day on Venus is longer than a year')
  solar_system.add_planet(venus)

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 149.6, 'Only planet known to support life')
  solar_system.add_planet(earth)

  mars = Planet.new('Mars', 'red', 6.39e24, 227.9, 'Pieces of Mars have fallen to Earth')
  solar_system.add_planet(mars)

  jupiter = Planet.new('Jupiter', 'white-orange-red', 1.898e27, 778.3, 'Jupiter has the shortest day of all the planets')
  solar_system.add_planet(jupiter)


  puts solar_system.list_planets


  found_planet = solar_system.find_planet_by_name(mercury)
  puts found_planet
end
main