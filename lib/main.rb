require_relative "planet"
require_relative "solar_system"


def main
  # create a solar system
  solar_system = SolarSystem.new("Sol")
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  jupiter = Planet.new('Jupiter', 'pink-ish', 7.972e24, 3.496e8, 'Rings man')

  # add some planets to it
  solar_system.add_planet(earth)
  solar_system.add_planet(jupiter)

  options = ["1. list planets", "2. planet details", "3. add planet", "4. exit"]
  answer = ""
  until answer == "exit"
    puts "What do you want to do next? Options: \n#{options.join("\n")}"
    answer = gets.chomp.downcase
    until options.map{|i| i.split(".")[-1].strip}.include?(answer)
      puts "Sorry this is not a valid answer. Please choose either: \n#{options.join("\n")}"
      answer = gets.chomp.downcase
    end
    if answer == "list planets"
      puts solar_system.list_planets
    elsif answer == "planet details"
      puts "Which planet would you like to know details for?"
      planet = gets.chomp
      found_planet = solar_system.find_planet_by_name(planet)
      puts found_planet.summary
    elsif answer == "add planet"
      puts "Please enter the details of the planet you want to add, starting with its name"
      name = gets.chomp.capitalize
      puts "Now enter its color"
      color = gets.chomp
      puts "Now enter its mass in kg"
      mass_kg = gets.chomp.to_i
      puts "Now enter its distance from the sun in km"
      distance_from_sun_km = gets.chomp.to_i
      puts "Now enter a fun fact about it"
      fun_fact = gets.chomp
      user_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(user_planet)
      puts "Sweet, here's the new planet list: \n#{solar_system.list_planets}"
    end
  end

end

main