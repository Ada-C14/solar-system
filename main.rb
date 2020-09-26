#main.rb
require_relative 'planet'
require_relative 'solar_system'

#Initialize Solar System
def create_solar_system
  #Create an instance of SolarSystem and add planet Wave 2, Part 4

  solar_system =SolarSystem.new('Sun')
  #Each planet is an instance of the Solar System

  mercury =Planet.new('Mercury','gray',3.285e23, '69.306 ', 'Mercury has the most craters in the Solar System.')
  solar_system.add_planets(mercury)

  venus =Planet.new('Venus', 'white',"4.867e24","107.84 ","Venus spins clockwise on its axis")
  solar_system.add_planets(venus)

  earth =Planet.new('Earth', 'blue-green',5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planets(earth)

  mars =Planet.new('Mars','red','6.39e23', '210.69', 'The NASA Curiosity Rover landed on Mars')
  solar_system.add_planets(mars)

  jupiter =Planet.new('Jupiter','orange-white','1.898e27','767.92 ','Jupiter is the largest planet in our solar system')
  solar_system.add_planets(jupiter)

  return solar_system
end

#Method to learn more about each planet,   Wave 3, part 1 & 2
def get_planet_details(solar_system)
  print "What is the name of the planet you want to learn about?"
  planet_name =gets.chomp.strip

  # the found planet is an instance of planet class
  found_planet = solar_system.find_planet_by_name(planet_name)

  puts found_planet.summary
end

#Method that will ask user to create a new planet, Wave 3 Part 3
def user_add_planet(solar_system)
  print "What planet do you want to add?"
  name = gets.chomp
  print "what is the color of the planet?"
  color = gets.chomp
  print "what is the mass in kg of the planet? "
  mass_kg = gets.chomp.to_i
  print "what is the distance from the sun for the planet?"
  distance_sun = gets.chomp.to_i
  print "what is a fun fact about the planet?"
  fun_fact= gets.chomp

  user_planet = Planet.new(name,color,mass_kg,distance_sun,fun_fact)
  solar_system.add_planets(user_planet)

end

def main
  my_solar_system = create_solar_system
  puts "Welcome to Solar System, please select a choice: "
  puts "List planets\nPlanet details\nAdd planet\nExit\n"

  user_input = gets.chomp.downcase.strip

  until user_input =="exit"
    case user_input
    when "list planets"
    puts my_solar_system.list_planets
    when "planet details"
      puts get_planet_details(my_solar_system)
    when "add planet"
      user_add_planet(my_solar_system)
    else
      puts "Invalid option.Program will exit."
    end
    puts"Please select a valid choice:"
    user_input = gets.chomp.downcase.strip
  end
end
main
