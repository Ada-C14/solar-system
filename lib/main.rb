require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Stjerne')

  begmentu = Planet.new('Begmentu', 'orange-grey', 4.2e23, 1.1e8, 'Only planet that rains diamonds')
  solar_system.add_planet(begmentu)

  xonziri = Planet.new('Xonziri', 'neon green', 8.3e24, 1.45e8, 'Largest planet')
  solar_system.add_planet(xonziri)

  slugworld = Planet.new('Slugworld', 'mustard yellow', 6.66e24, 2.34e8, 'Only planet that is covered in slugs')
  solar_system.add_planet(slugworld)

  whats_next = nil
  until whats_next == "exit"
    puts "What would you like to do next? List planets, return planet details, add planet, or exit?"
    whats_next = gets.chomp
    case whats_next.downcase
    when "list", "list planets"
      list = solar_system.list_planets
      puts list
    when "return planet details", "planet details", "details"
      puts "What is the name of the planet?"
      planet_of_interest = gets.chomp
      found_planet = solar_system.find_planet_by_name(planet_of_interest)
      puts found_planet.summary
    when "add planet", "add"
      puts "What is the planet's name?"
      input_name = gets.chomp.capitalize
      puts "What is #{input_name}'s color?"
      input_color = gets.chomp.downcase
      puts "Mass in kilograms?"
      input_mass = gets.chomp.to_f
      puts "Distance from sun in kilometers?"
      input_distance = gets.chomp.to_f
      puts "What is a fun fact about #{input_name}?"
      input_fact = gets.chomp

      input_name = Planet.new(input_name, input_color, input_mass, input_distance, input_fact)
      solar_system.add_planet(input_name)
    end
  end


end

main


# puts begmentu.name
# puts begmentu.fun_fact
#
# puts xonziri.name
# puts xonziri.fun_fact
#
# puts begmentu.summary
# puts xonziri.summary
# puts "############"
#
# list = solar_system.list_planets
# puts list
#
# puts '######## '
# found_planet = solar_system.find_planet_by_name('xonziri')
# puts found_planet
# puts found_planet.summary

#
# puts earth.name
# # => Earth
# puts earth.fun_fact
#
# puts earth.summary
