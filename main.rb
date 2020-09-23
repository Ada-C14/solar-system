require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')
  mars = Planet.new('Mars', 'red', 5.972e24, 1.496e8, 'aliens?')
  #
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)



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

  # p earth.summary
  # list = solar_system.list_planets
  # puts list
  #
  # planet_info = solar_system.find_planet_by_name('earth')
  # puts planet_info.summary

end

main