require_relative 'planet.rb'
require_relative 'solar_system.rb'


def main
  solar_system = SolarSystem.new('Sol')

  #name, color, mass_kg, distance_from_sun_km, fun_fact
  earth = Planet.new('Earth', 'Blue', '3.09822e21', '1.12343e6', 'it is nicknamed the blueberry')
  mercury = Planet.new('Mercury', 'Grey', '3.29903e2', '1.349900e2', 'it has the most craters in the solar system')
  moon = Planet.new( 'Moon', 'Golden', '1.2332e2', '1.12332e1', 'It has active tectonic systems')
  venus = Planet.new('Venus', 'orange', '2.323442e2', '3.44211e2', 'A day on Venus is longer than a year on earth')

  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  solar_system.add_planet(moon)
  solar_system.add_planet(venus)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_my_planet_by_name('Earth')
  # found_planet is an instance of class Planet
  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>

  puts found_planet.summary
  # => Earth is a blue-green planet ...
end


main #why do we invoke main as the last line of your program?
