require_relative 'planet'
require_relative 'solar_system'
# require 'prettyprint'
def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.name
  puts earth.fun_fact

  mars = Planet.new('Mars', 'red', 6.39e23, 141.6, 'Mars has two moons named after horses Phobos (fear) and Deimos (panic)')
  puts mars.name
  puts mars.fun_fact

  puts mars.summary

  solar_system = SolarSystem.new("Sun")
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)

  puts solar_system.list_planets

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet

  puts found_planet.summary

  # user_input = ""

    puts "What would you like to do next? List the planets, see planet's details or exit?"
    puts "To list the planets please type l, to see planet's details type d, to add a planet type a or to exit - e. =>"
    user_input = gets.chomp.downcase
    until user_input == "e"
      if user_input == "l"
      puts "#{solar_system.list_planets}"
      elsif user_input == "d"
        details(solar_system)
      elsif user_input == "a"
        add_planet(solar_system)
      end
    puts "To list the planets please type l, to see planet's details type d, to add a planet type a or to exit - e. =>"
    user_input = gets.chomp.downcase
  end
end
def details(solar_system)
  puts "Please enter the name of the planet you want to learn more =>"
  planet_name = gets.chomp
  found_planet = solar_system.find_planet_by_name(planet_name)
  if found_planet
    puts found_planet.summary
  else puts "there is no such a planet here.."
  end

end

def add_planet(solar_system)
  puts "Please enter a planet's name"
  new_planet_name = gets.chomp.to_s
  puts "Please enter a planet's color"
  new_planet_color = gets.chomp.to_s
  puts "Please enter a planet's mass in kg"
  new_planet_mass = gets.chomp
  puts "Please enter a distance from sun to this planet in km"
  new_planet_distance = gets.chomp
  puts "Please enter a fun fact about this planet"
  new_planet_fun_fact = gets.chomp.to_s
  new_planet = Planet.new(new_planet_name, new_planet_color, new_planet_mass, new_planet_distance, new_planet_fun_fact)
  solar_system.add_planet(new_planet)
end

main
