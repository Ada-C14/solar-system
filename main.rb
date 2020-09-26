require_relative 'planet.rb'
require_relative 'solar_system.rb'
require 'pry'

def get_new_user_planet
  puts "Let's add a new planet! Please provide the following info:"
  puts "Planet name:"
  name = gets.chomp
  puts "Planet color:"
  color = gets.chomp
  puts "Planet's mass in kilograms:"
  mass = gets.chomp
  puts "Planet's distance from in the sun in kilometers:"
  distance = gets.chomp
  puts "Fun fact about planet:"
  fun_fact = gets.chomp
  puts ""

  new_planet = Planet.new(name, color, mass, distance, fun_fact)

  return new_planet
end

def get_user_planet_choice
  puts "Planet name?"

  planet_choice = gets.chomp
  puts ""

  return planet_choice
end

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  jupiter = Planet.new('Jupiter', 'orange-yellow', 50.24e34 , 5.496e8, 'Fastest spinning planet in the Solar System')

  solar_system.add_planet(earth)
  solar_system.add_planet(jupiter)


  puts "*💫* WELCOME TO THE SOLAR SYSTEM DATABASE *💫*_\n"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "\n What would you like to do?\n"
  puts "1. List Planets\n"
  puts "2. Get Planet Information\n"
  puts "3. Enter New Planet\n"
  # puts "4. Intergalactic Distance Calculator\n"
  puts "4. Exit\n"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

  loop do
    print "\nEnter database selection: "
    choice = gets.chomp.to_s

    case choice

    when "1"
      puts solar_system.list_planets

    when "2"
      puts "Enter Planet name:"
      planet_name = get_user_planet_choice
      found_planet = solar_system.find_planet_by_name(planet_name)

      if (found_planet)
        puts found_planet.summary
      else
        puts "I couldn't find a planet by the name #{planet_name}.\n\n"
      end

    when "3"
      puts "What planet would you like to add? "
      solar_system.add_planet(get_new_user_planet)
      puts "\n...Entered into system. Thank You."

    # when "4"
    #   planet_1 = get_user_planet_choice
    #   planet_2 = get_user_planet_choice
    #
    #   puts solar_system.distance_between(planet_1, planet_2) #!!!!!

    when "4"
      exit
    else
      puts "\nError. Invalid input."
    end
  end
end


main


