require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Zeus')
  tatooine = Planet.new('Tatooine', 'orange-ish', 6.34e48, 1.29e13, 'has two moons')
  pluto = Planet.new('Pluto', 'purple', 10, 2.8e293, 'counts as a planet in some books')
  solar_system.add_planet(tatooine)
  solar_system.add_planet(pluto)

  option = ""

  until option == "exit"
    puts "Please choose one of these options:
  1. list planets
  2. get planet details
  3. add planet
  4. exit"

    option = gets.chomp.downcase

    case option
    when "list planets"
      puts solar_system.list_planets
    when "get planet details"
      puts "Which planet's details do you want to know? "
      get_planet = gets.chomp
      puts solar_system.find_planet_by_name(get_planet).summary
    when "add planet"
      puts "Please enter new planet name"
      name = gets.chomp
      puts "Enter planet color"
      color = gets.chomp
      puts "Enter planet mass"
      mass = gets.chomp.to_f
      puts "Enter planet distance from sun"
      distance = gets.chomp
      puts "Enter a fun fact about the planet"
      fact = gets.chomp

      solar_system.add_planet(Planet.new(name, color, mass, distance, fact))
    end
  end

end

main