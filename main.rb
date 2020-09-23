require_relative 'planet'
require_relative 'solar_system'

def get_info(solar_system)
  answer = ''
  while answer != 'exit'
    puts "\nWhat do you like to do next, list planets, planet details, add planet or exit? "
    answer = gets.chomp
    case answer
    when 'list planets'
      list = solar_system.list_planets
      puts list
    when 'planet details'
      puts "What is the planet's name? "
      response = gets.chomp
      planet = solar_system.find_planet_by_name(response)
      puts planet.summary
    when 'add planet'
      add_planet(solar_system)
    else
      break if answer == 'exit'

      puts 'Your choice is invalid.'
    end
  end

end

def add_planet(solar_system)
  puts "What is the planet's name, color, weight in kg, distance from the sun in km and a fun fact? "
  planet_to_be_add = gets.chomp.split(", ")
  added_planet = Planet.new(planet_to_be_add[0], planet_to_be_add[1], planet_to_be_add[2], planet_to_be_add[3], planet_to_be_add[4] )
  solar_system.add_planet(added_planet)
  list = solar_system.list_planets
  puts list
end

def main

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 14.16e8, 'The second-smallest planet in the solar system')
  saturn = Planet.new('Saturn', 'pale yellow', 5.683e26, 92.802e8, 'The second-largest planet in the solar system')

  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(saturn)

  get_info(solar_system)

end

main

