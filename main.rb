require_relative 'planet'
require_relative 'solar_system'

def main

  jupiter = Planet.new('Jupiter', 'brown', 4.972e24, 1.506e8, 'Only planet known how to be happy in life')
  venus = Planet.new('Venus', 'gray', 2.972e24, 1.126e8, 'Only planet known how to travel around the world')
  #===================
  # create an instance of SolarSystem, add all your Planets to it
  solar_system = SolarSystem.new('Sol')
  all_planets = [jupiter, venus]
  all_planets.each do |planet|
    solar_system.add_planet(planet)
  end
  # print the list
  list = solar_system.list_planets
  # puts list
  #=================
  found_planet = solar_system.find_planet_by_name('jupiter')

end


main