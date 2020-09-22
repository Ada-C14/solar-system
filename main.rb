require_relative 'planet'
require_relative 'solarsystem'

def users_new_planet
  puts "What is the planet name?"
  name = gets.chomp
  puts "What is the planet's color(s)?"
  color = gets.chomp
  puts "What is the planet's mass in kg?"
  mass = gets.chomp.to_f
  puts "What is the planet's distance from the sun?"
  distance = gets.chomp.to_f
  puts "What is a fun fact about your planet?"
  fact = gets.chomp

  user_planet = Planet.new(name, color, mass, distance, fact)

  return user_planet
end

def main
  solar_system = Solar_system.new("THE SUN")
  etheria = Planet.new("Etheria", "purple", 3e24, 1.5e8, "Etheria has 12 moons which provide magical energy.")
  eternia = Planet.new("Eternia", "pink", 5e25, 2e8, "People of Eternia colonized Etheria and turned Etheria into a weapon.  Birth place of She-Ra.")
  earth = Planet.new("Earth", "mostly blue", 5.972e24, 1.496e8, "Earth.... oof it's complicated but there is life here.")
  solar_system.add_planet(etheria)
  solar_system.add_planet(eternia)
  solar_system.add_planet(earth)

  puts "Welcome to the Solar System.  What do you want to do?  Please enter any of these options: \n*LIST ~ this will list the planets \n*ADD ~to add a planet \n-any other response to exit"
  input = gets.chomp

  case input.upcase
  when "YES"
    puts solar_system.list_planets
  when "ADD"
    solar_system.add_planet(users_new_planet)
  end

end

main

# etheria = Planet.new("Etheria", "purple", 3e24, 1.5e8, "Etheria has 12 moons which provide magical energy.")
#
# eternia = Planet.new("Eternia", "pink", 5e25, 2e8, "People of Eternia colonized Etheria and turned Etheria into a weapon.  Birth place of She-Ra.")
#
# #puts in main, not in the class b/c it doesn't make sense to print in this class, this is for storing information/actions, not printing it out.
# puts etheria.summary
# puts eternia.summary
#
# milky_way = Solar_system.new("Orion")
# milky_way.add_planet(eternia)
# milky_way.add_planet(etheria)
#
# puts milky_way.list_planets
#
# found_planet = milky_way.find_planet_by_name('Etheria')
# puts found_planet.summary
#
# puts milky_way.find_planet_by_name('Earth')