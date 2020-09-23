require_relative 'planet'
require_relative 'solar_system'

# def create_solar_system
#   solar_system = SolarSystem.new('Zeus')
#   tatooine = Planet.new('Tatooine', 'orange-ish', 6.34e48, 1.29e13, 'has two moons')
#   pluto = Planet.new('Pluto', 'purple', 10, 2.8e293, 'counts as a planet in some books')
#   solar_system.add_planet(tatooine)
#   solar_system.add_planet(pluto)
# end

def main
  solar_system = SolarSystem.new('Zeus')
  tatooine = Planet.new('Tatooine', 'orange-ish', 6.34e48, 1.29e13, 'has two moons')
  pluto = Planet.new('Pluto', 'purple', 10, 2.8e293, 'counts as a planet in some books')
  solar_system.add_planet(tatooine)
  solar_system.add_planet(pluto)
  list = solar_system.list_planets

  option = ""

  until option == "exit"
    puts "Please choose one of these options:
  1. list planets
  2. get planet details
  3. add planet
  4. exit"

    option = gets.chomp.downcase

    case option
    when 'list planets'
      puts list
    when 'get planet details'
      puts "Which planet's details do you want to know? "
      get_planet = gets.chomp
      puts solar_system.find_planet_by_name(get_planet).summary

    when 'add planet'
      puts 'Please enter new planet details'
      solar_system.add_planet(Planet.new(gets.chomp, gets.chomp, gets.chomp.to_f, gets.chomp.to_f, gets.chomp))
    end
  end

end

main