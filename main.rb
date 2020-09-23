require_relative 'planet'
require_relative 'solar_system'
require 'colorize'
require 'colorized_string'

def main

  #Create a solar system, planets, and add them to the planets array in the solar system
  solar_system = SolarSystem.new("luna")

  koopa_troopa_town = Planet.new("koopa troopa town","red and green", 6.972e24, 1.283e7, "It takes a while for inhabitants to come out of their shell.")
  solar_system.add_planet(koopa_troopa_town)

  yoshi_land = Planet.new("yoshi land", "green", 2, 1.5, "My full planet name is T. Yoshisaur Munchakoopas" )
  solar_system.add_planet(yoshi_land)

  mario_world = Planet.new("mario world", "red", 5.432e56, 100000, "You'll find that everything here is super!")
  solar_system.add_planet(mario_world)

  earth = Planet.new("earth", "blue-green",6.972e24,1.283e7,"I live on it")
  solar_system.add_planet(earth)

  bowserville = Planet.new("bowserville", "orange, red, and green", 100000000e34, 60000, "Bwa ha ha ha!" )
  solar_system.add_planet(bowserville)

  luigi_lagoon = Planet.new("luigi lagoon", "green", 343439, 232939, "Luigi TIme!!")
  solar_system.add_planet(luigi_lagoon)

  princess_peach_paradise = Planet.new("princess peach paradise", "peach", 34342, 45645, "Peachy!")
  solar_system.add_planet(princess_peach_paradise)



  #Control loop that repeatedly asks user what to do next
  # Only way to exit program is to type 'exit'
  repeat = true
  until repeat == false
    puts
    puts "*" * 50
    puts "Marioooo time! What would you like to do next?\nYou can:\n".colorize(:light_green)
    puts "1. See a list of planets by typing 'list'\n"
    puts "2. View planet details of your favorite planet by typing 'details'\n"
    puts "3. Add a planet to the Mario Universe collection by typing 'add'\n"
    puts "4. Exit the program by typing 'exit'\n\n"
    puts "Waiting for your input.... "
    input = gets.chomp

    case
    when input == "list"
        list = solar_system.list_planets
        puts list
    when input == "details"
      puts "What planet are you interested in learning more about?"
      input = gets.chomp.to_s
      summary = solar_system.find_planet_by_name(input)
      puts summary
    when input == "add"
      solar_system.add_new_planet
      puts "Let's see your new planet!"
    when input == "exit"
      exit
    else
      puts "\nInvalid Entry. Please read the instructions carefully and retype your answer.".upcase.colorize(:red)
    end
  end
end

main














# main
#

# end
# main