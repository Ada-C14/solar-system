
require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, ' Earth is the only planet known to support life')
  venus = Planet.new("Venus", 'white', 4.867e24, 107860000000, 'a day on Venus is longer than a year' )
  saturn = Planet.new("Saturn", "yellow", 5.683e26, 1.4935e12, ' Saturn has 62 moons')
  solar_system.add_planet(earth)
  solar_system.add_planet(venus)
  solar_system.add_planet(saturn)

  user_entry = ""

  while user_entry.downcase != "exit"

    print "\n  What would you like to do next? List planets, planet details, add planet or exit? "
    user_entry = gets.chomp
    if user_entry.downcase == "list planets"
      puts solar_system.list_planets

    elsif user_entry.downcase == "planet details"
      print "  Which planet would you like to learn about? "
      search = gets.chomp
      found_planet = solar_system.find_planet_by_name(search)

      puts found_planet
      puts found_planet.summary

    elsif user_entry.downcase == "add planet"
      new_planet_arr = []
      print "\n What is the name of the planet you want to add? "
      user_entry = gets.chomp
      new_planet_arr << user_entry.capitalize
      print " What color is #{new_planet_arr[0]}? "
      user_entry = gets.chomp
      new_planet_arr << user_entry
      print " What is the mass of #{new_planet_arr[0]} in kilograms? "
      user_entry = gets.chomp
      new_planet_arr << user_entry.to_i
      print " What is the distance of your planet to #{solar_system.star_name} in kilometers? "
      user_entry = gets.chomp
      new_planet_arr << user_entry.to_i
      print " What is a fun fact about #{new_planet_arr[0]}? "
      user_entry = gets.chomp
      new_planet_arr << user_entry

      user_planet = Planet.new(new_planet_arr[0], new_planet_arr[1], new_planet_arr[2], new_planet_arr[3], new_planet_arr[4])
      solar_system.add_planet(user_planet)
      end
  end
end


main
