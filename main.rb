#main.rb
require_relative 'planet.rb'
require_relative 'solar_system.rb'

#Initialize Solar System
def main
  #Create an instance of SolarSystem and add planet Wave 2, Part 4

  solar_system =SolarSystem.new('Sun')
#Each planet is an instance of the Solar System

  mercury =Planet.new('Mercury','gray',3.285e23, '69.306 ', 'Mercury has the most craters in the Solar System.')
  solar_system.add_planets(mercury)

  venus=Planet.new('Venus', 'white',"4.867e24","107.84 ","Venus spins clockwise on its axis")
  solar_system.add_planets(venus)

  earth=Planet.new('Earth', 'blue-green',5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planets(earth)

  mars=Planet.new('Mars','red','6.39e23', '210.69', 'The NASA Curiosity Rover landed on Mars')
  solar_system.add_planets(mars)

  jupiter=Planet.new('Jupiter','orange-white','1.898e27','767.92 ','Jupiter is the largest planet in our solar system')
  solar_system.add_planets(jupiter)

  return solar_system
end
main


puts "Welcome to Planets! What would you like to do next?"

choices = ["list planets", "Planet details", "Add Planet", "Exit"]
choices.each do |choice|
    puts "#{choice}"
  end
  user_choice = gets.chomp
  return user_choice