require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Handshakes in the Hamptons')
  emma = Planet.new('Emma', 'red', 25000000000, "500 million", "The entire surface of this planet is made of trampolines")
  india = Planet.new('India', 'yellow', 780000000, '400 million', 'Every body of water is made up of wine')
  jasmine = Planet.new('Jasmine', 'pink', 1230000, '600 million', 'The only food source on this planet is eggs')
  collin = Planet.new('Collin', 'orange', 69000000, '800 million', 'On this planet, everyone falls in love with everyone')
  francis = Planet.new('Francis', 'green', 123000000, '300 million', 'Humans here have REALLY hairy arms, which allows them to fly')
  shaila = Planet.new('Shaila', 'lavender', 839000000, '900 million', 'All men on this planet take the form of Edward or Jacob')
  amadi = Planet.new('Amadi', 'purple', 9990000, '700 million', 'This planet is covered in an invasive species of mushrooms introduced by Earth humans')

  solar_system.add_planet(emma)
  solar_system.add_planet(india)
  solar_system.add_planet(jasmine)
  solar_system.add_planet(collin)
  solar_system.add_planet(francis)
  solar_system.add_planet(shaila)
  solar_system.add_planet(amadi)

  def planet_details(planet)
    return planet.summary
  end

  puts "Please choose from the following options:\nlist planets\nexit\nplanet details\nadd planet"
  choose_option = gets.chomp.downcase

  if choose_option == 'list planets'
    puts solar_system.list_planets
  elsif choose_option == 'exit'
    exit
  elsif choose_option == 'planet details'
    puts "Which planet would you like to learn about?"
    planet = gets.chomp.downcase
    planet_of_interest = solar_system.find_planet_by_name(planet)
    if planet_of_interest == nil
      puts "Please enter a valid planet name"
      planet = gets.chomp.downcase
    end
    puts planet_of_interest.summary
  elsif choose_option == 'add planet'
    puts "Please enter the planet details"
    puts "Enter the planet's name:"
    name = gets.chomp.capitalize
    puts "Enter the color of the planet:"
    color = gets.chomp.downcase
    puts "Enter the the mass in kilograms (please use numbers in the answer):"
    mass = gets.chomp.to_i
    puts "Enter the planet's distance from the sun in kilometers (please use numbers in the answer):"
    distance = gets.chomp.to_i
    puts "Enter a fun fact about this planet:"
    fun_fact = gets.chomp.capitalize

    new_planet = Planet.new(name, color, mass, distance, fun_fact)
    solar_system.add_planet(new_planet)
    planet_list = solar_system.list_planets
    puts "Your new planet list is:\n#{planet_list}"
  end
end

main