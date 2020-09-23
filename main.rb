require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 150.11, 'is the only planet known to support life')
  venus = Planet.new('Venus', 'grey', 4.868e24, 107.85, 'spins in the opposite direction to most planets')
  neptune = Planet.new('Neptune', 'blue', 1.024e26, 4476.3, 'orbits the sun every 165 years')

  #
  solar_system.add_planet(earth)
  solar_system.add_planet(venus)
  solar_system.add_planet(neptune)



  while true
    puts "\nWhat would you like to do next? (list planets or exit): "
    user_input = gets.chomp

    if user_input == "list planets"
      list = solar_system.list_planets
      print list

    elsif user_input == "planet details"
      print "Which planet would you like to learn about? "
      found_planet = gets.chomp
      planet_details = solar_system.find_planet_by_name(found_planet)
      print planet_details
      print planet_details.summary
    elsif user_input == "add planet"
      planet_details = solar_system.users_planet
      print planet_details
       # print planet_details.summary
    elsif user_input == "exit"
      return false
    end
  end
end

main