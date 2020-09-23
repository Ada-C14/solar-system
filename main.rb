require_relative 'planet'
require_relative 'solar_system'

def get_info(solar_system)
  answer = ""
  while answer != 'exit'
    puts "What do you like to do next, list planets or exit? "
    answer = gets.chomp
    if answer == 'list planets'
      list = solar_system.list_planets
      puts list
    end
  end

end

def main

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 14.16e8, 'The second-smallest planet in the solar system')
  saturn = Planet.new('Saturn', 'pale yellow', 5.683e26, 92.802e8, 'The second-largest planet in the solar system')

  # puts earth.summary
  # puts mars.summary
  # puts saturn.summary

  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  list = solar_system.list_planets
  puts list

  # found_planet = solar_system.find_planet_by_name('eArth')
  # puts found_planet
  get_info(solar_system)

end

main

