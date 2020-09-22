require_relative 'planet'
require_relative 'solar_system'


def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new("Mars", "red", 6.39e23, 1.307e8, "where The Martian took place")
  jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'biggest planet in our Solar System')
  saturn = Planet.new('Saturn', 'pink', 5.69e26, 1.5e9, 'least dense planet in the Solar System')
  uranus = Planet.new('Uranus', 'blue', 8.68e25, 3e9, 'has the coldest temperatures of any planet')
  neptune = Planet.new('Neptune', 'dark-blue', 1.02e26, 4.5e9, 'has the strongest winds in the Solar System')

  our_solar_system = SolarSystem.new("Sol")
  planets = [earth, mars, jupiter, saturn, uranus, neptune]
  planets.each do |planet|
    our_solar_system.add_planet(planet)
  end

  # wave 3
  def planet_details(solar_system)
    puts "please enter the name of planet you want to learn about"
    chosen_planet = gets.chomp.downcase

    while solar_system.find_planet_by_name(chosen_planet) == nil
      puts "please enter a valid planet name"
      chosen_planet = gets.chomp
    end
    puts solar_system.find_planet_by_name(chosen_planet).summary
  end

  def add_planet(solar_system)
    puts "please enter the name of the planet"
    name = gets.chomp.capitalize
    puts "please enter the color"
    color = gets.chomp
    puts "please enter the planet's mass in kg"
    mass_kg = gets.chomp.to_i
    puts "please enter the planet's distance from the sun in km"
    distance_from_sun_km = gets.chomp.to_i
    puts "please enter fun fact"
    fun_fact = gets.chomp

    user_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
    solar_system.add_planet(user_planet)
  end
  # control loop, keep going until you break
  while true
  puts "What do you want to do? \n 1. Type 'list' for list planets \n 2. Type 'exit' for quitting program \n 3. Type 'details' to see more about a chosen planet \n 4. Type 'add' to add planet to solar system "
  user_input = gets.chomp
  until %w(list exit details add).include?(user_input)
    puts "please enter a valid input of 'list' or 'exit' or 'details' or 'add'"
    user_input = gets.chomp
  end

  case user_input
  when "list"
    puts our_solar_system.list_planets
  when "details"
    planet_details(our_solar_system)
  when "add"
    add_planet(our_solar_system)
  when "exit"
    break
  else
    "wrong input"
  end
  end





end

main


#
# solar_system = SolarSystem.new("Sol")
# earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
# solar_system.add_planet(earth)
#
# list = solar_system.list_planets
# puts list
#
# found_planet = solar_system.find_planet_by_name('Earth')
# puts found_planet
#
# puts found_planet.summary
# puts earth.summary
