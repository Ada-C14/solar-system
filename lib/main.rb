require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Stjerne')

  begmentu = Planet.new('Begmentu', 'orange-grey', 4.2e23, 1.1e8, 'Only planet that rains diamonds')
  solar_system.add_planet(begmentu)

  xonziri = Planet.new('Xonziri', 'neon green', 8.3e24, 1.45e8, 'Largest planet')
  solar_system.add_planet(xonziri)

  puts begmentu.name
  puts begmentu.fun_fact

  puts xonziri.name
  puts xonziri.fun_fact

  puts begmentu.summary
  puts xonziri.summary
  puts "############"

  list = solar_system.list_planets
  puts list

  puts '######## '
  found_planet = solar_system.find_planet_by_name('xonziri')
  puts found_planet
  puts found_planet.summary
end

main




#
# puts earth.name
# # => Earth
# puts earth.fun_fact
#
# puts earth.summary
