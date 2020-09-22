require_relative 'planet'
require_relative 'solar_system'

def main
  # Create two different instances of Planet and print out some of their attributes  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts "#{ earth.name } is #{ earth.color }"
  puts earth.summary  

  mars = Planet.new('Mars', 'red', 6.39e23, 14.16e8, 'The second-smallest planet in the solar system')  
  puts "#{ mars.name } is #{ mars.fun_fact.downcase }"
  puts mars.summary  

  # create an instance of SolarSystem, add all your Planets to it, and then print the list
  solar_system = SolarSystem.new("Sol")
  saturn = Planet.new('Saturn', 'pale yellow', 5.683e26, 92.802e8, 'The second-largest planet in the solar system')
  solar_system.add_planet(saturn)

  list = solar_system.list_planets
  puts list
  
  # Exercise SolarSystem#find_planet_by_name
  found_planet = solar_system.find_planet_by_name('saturn')
  puts found_planet
  puts found_planet.summary if found_planet.class == Planet
end

main