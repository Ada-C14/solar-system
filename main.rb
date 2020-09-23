require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Leonidas")

  zollerndamm = Planet.new("Zollerndamm", "silver", 9384, 23843, "Regal silver in color, it has shown to be a promising new source of beauty in Space")
  blisse = Planet.new("Blisse", "pink", 8394, 6637, "Shining brighter than all other planets in Leonidas")
  dahlem = Planet.new("Dahlem", "gold", 748, 928398, "It is believed gold has been seen glittering on its surface")
  stiletto = Planet.new("Stiletto", "yellow", 2398, 98347, "Resembles the brilliant yellow of a larch tree in Autumn")

  solar_system.add_planet(zollerndamm)
  solar_system.add_planet(blisse)
  solar_system.add_planet(dahlem)
  solar_system.add_planet(stiletto)


  puts "You have the chance to learn more about the Leonidas Solar System and its fascinating planets"
  puts "What would you like to do from the following options: \nlist planets \nexit"
  answer1 = gets.chomp.downcase
  if answer1 == "list planets"
    puts solar_system.list_planets
    puts ""
    puts "Would you like to learn more details about these planets? \nyes \nno"
    answer2 = gets.chomp.downcase
    if answer2 == "yes"
      puts "Which planet would you like to learn about from the above list?"
      answer3 = gets.chomp.downcase
      planet_deets = solar_system.find_planet_by_name(answer3)
      puts "Please enter a valid planet name" if planet_deets == nil
      puts planet_deets.summary
      puts ""
      puts "Thank you for your intensive study of Leonidas. We feel you have earned the honor of adding a planet."
      puts "Would you like to take us up on this exciting offer? \nyes \nno"
      answer4 = gets.chomp.downcase
      if answer4 == "yes"
        puts "Please enter your stunnign new planet's details"
        puts "Enter the planet's name:"
        name = gets.chomp.capitalize
        puts "Enter the planet's color:"
        color = gets.chomp.downcase
        puts "Enter its mass in kilograms (a number):"
        mass_kg = gets.chomp.to_i
        puts "Enter the planet's distance from the sun in kilometers (a number):"
        distance_km = gets.chomp.to_i
        puts "Enter a fun fact about this planet:"
        fun_fact = gets.chomp.capitalize

        added_planet = Planet.new(name, color, mass_kg, distance_km, fun_fact)
        solar_system.add_planet(added_planet)
        planet_list = solar_system.list_planets
        puts "Now including your new planet, Leonidas shines throughout the universe with the following planets \n#{planet_list}"
      elsif answer4 == "no"
        puts "It's true, Leonidas has enough planets as it is. Safe journey!"
        exit
      else
        puts "Reading directions is required for planet adding"
        exit
      end
    elsif answer2 == "no"
      puts "Thanks for exploring"
      exit
    else
      puts "Please start over and enter an existing planet"
      exit
    end
  elsif answer1 == "exit"
    exit
  else
    puts "Please re-start and enter a valid option"
    exit
  end
end

main