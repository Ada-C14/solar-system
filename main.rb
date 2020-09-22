require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'it is the only planet known to support life')
  mercury = Planet.new('Mercury', 'dark gray', 5.972e24, 1.496e8, 'Mercury is the smallest and innermost planet in the Solar System.')
  venus = Planet.new('Venus', 'white', 5.972e24, 1.496e8, 'it is named after the Roman goddess of love and beauty. ')
  mars = Planet.new('Mars', 'red', 5.972e24, 1.496e8, 'it is named after the Roman god of war.')
  solar_system = SolarSystem.new('Sun')
  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)
  return solar_system
end


############################

solar_system = main
puts "Welcome! What would you like to do next? \n1. list planets \n2. planet details \n3. add planet \n4. exit"
input = gets.chomp.upcase
options = ["1", "2", "3", "4", "LIST PLANETS", "PLANET DETAILS", "ADD PLANET", "EXIT"]
while input != "4" && input != "EXIT"
  if !options.include? input
    puts "Please choose an option from the list. What would you like to do next?"
  end

  case input
  when "1", "LIST PLANETS"
    puts solar_system.list_planets
  when "2", "PLANET DETAILS"
    solar_system.planet_details(solar_system)
  when "3", "ADD PLANET"
    solar_system.add_a_planet
  end

  puts "\n***What would you like to do next? \n1. list planets \n2. planet details \n3. add planet \n4. exit"
  input = gets.chomp.upcase

end
