require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Zeus')
  tatooine = Planet.new('Tatooine', 'orange-ish', 6.34e48, 1.29e13, 'has two moons')
  pluto = Planet.new('Pluto', 'purple', 10, 2.8e293, 'counts as a planet in some books')
  solar_system.add_planet(tatooine)
  solar_system.add_planet(pluto)
  list = solar_system.list_planets
  found_planet = solar_system.find_planet_by_name('Pluto')

  puts found_planet.summary

  # puts "#{tatooine.name} is #{tatooine.color} and #{tatooine.fun_fact}."
  # puts "#{pluto.name} has a mass of #{pluto.mass_kg} kgs and #{pluto.fun_fact}."
  # puts "#{tatooine.summary}"
  puts list

end

def control_loop
  puts "Please choose one of these options:
1. List Planets
2. Get Planet Details
3. Add Planet"

  # option = gets.chomp

end

control_loop
main