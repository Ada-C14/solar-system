require_relative 'planet'
require_relative 'solar_system'
require 'colorize'

def main
  puts "☀️️🌎🪐 Welcome to the Build-A-Solar-System Program! 💫☄️🌕"

  solar_system = SolarSystem.new('Sun')

  mercury = Planet.new('Mercury', 'burnt orange', 330, 35.98, 'Aliens live here!')
  venus = Planet.new('Venus', 'pink', 48700, 67.24, 'Both a planet and a goddess!')
  earth = Planet.new('Earth', 'blue-green', 59700, 92.96, 'We have water, air and humans!')
  mars = Planet.new('Mars', 'red', 6420, 141.6, 'Home of the Mar\'s chocolate!')
  jupiter = Planet.new('Jupiter', 'orange, white and brown', 1898000, 483.8, 'I have a weird birthmark.')
  saturn = Planet.new('Saturn', 'green', 56800, 890.8, 'I have more rings than Lebron himself.')
  uranus = Planet.new('Uranus', 'purple', 868000, 17640, 'I get made fun of because of my name :(')
  neptune = Planet.new('Neptune', 'white', 10200, 27930, 'I rule the sea!')
  pluto = Planet.new('Pluto', 'neon green', 14, 5900000, 'I used to be a planet. Take me back pls...')

  nine_planets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]

  nine_planets.each { |planet| solar_system.add_planet(planet) }

  # MAIN MENU
  user_input = ""

  while user_input != "5"
    puts "\n   Please select from the following options. Enter a numerical selection:"
    puts "   1. List Planets"\
         "\n   2. Add a Planet to the Solar System"\
         "\n   3. View Planet Details"\
         "\n   4. Find the Distance Between 2 Planets"\
         "\n   5. Exit\n\n"
    print "Selection: "

    user_input = gets.chomp

    if user_input == "1"

      print solar_system.list_planets.colorize(:light_blue)

    elsif user_input == "2"

      puts "\nLet's add a planet to your solar system!".colorize(:light_green)

      print "\n   Enter your new planet's name: ".colorize(:light_green)
      planet_name = gets.chomp
      print "   Enter #{planet_name.capitalize}'s color: ".colorize(:light_green)
      planet_color = gets.chomp
      print "   Enter #{planet_name.capitalize}'s mass in kg: ".colorize(:light_green)
      planet_mass = Float(gets.chomp)
      print "   Enter #{planet_name.capitalize}'s distance from the sun in km: ".colorize(:light_green)
      planet_distance_from_sun = Float(gets.chomp)
      print "   Enter a fun fact about #{planet_name.capitalize}: ".colorize(:light_green)
      planet_fun_fact = gets.chomp
      new_planet = Planet.new(planet_name, planet_color, planet_mass, planet_distance_from_sun, planet_fun_fact)

      solar_system.add_planet(new_planet)
      puts "\n🪐 #{planet_name.capitalize} was added to your solar system! 🪐".colorize(:light_green)

    elsif user_input == "3"

    elsif user_input == "4"

    elsif user_input == "5"
      puts "\nThank you for using the Build-A-Solar-System Program! Goodbye!"
    end
  end

end

main