require_relative "planet"
require_relative "solar_system"

def main

  solar_system = SolarSystem.new("Orion")

  mars = Planet.new("Mars", "red", "6.39 × 10^23", "210.58 million", "we might have to figure out how to live there if corporations keep ruining earth")
  solar_system.add_planet(mars)
  venus = Planet.new("Venus", "yellowish white", "4.867 × 10^24", "107.85 million", "doesn't have any moons :( ")
  solar_system.add_planet(venus)
  titan = Planet.new("Titan", "glowing orange", "1.3452 x 1023", "1.4 billion", "Kurt Vonnegut wrote a great book that was set on this planet")
  solar_system.add_planet(titan)




  control_loop(solar_system)
end
def control_loop(solar_system)

  puts "Options:\nList Planets\nPlanet Details\nAdd Planet\nExit"

  choice = ""
  until choice == "exit" do

    puts "\nWhat would you like to do?\n"
    choice = gets.chomp.downcase

    case choice
    when "list planets"
      puts solar_system.list_planets
    when "planet details"
      puts "What planet would you like to know more about?"
      planet = gets.chomp.capitalize
      puts solar_system.find_planet_by_name(planet)
    when "add planet"
      puts "What's the name of the planet you want to add?"
      user_planet = gets.chomp.capitalize
      puts "Color?"
      color = gets.chomp
      puts "Mass in kg?"
      mass = gets.chomp
      puts "Distance from the sun?"
      distance = gets.chomp
      puts "Fun fact?"
      funfact = gets.chomp

      solar_system.add_planet(Planet.new(user_planet, color, mass, distance, funfact))



    else
      exit
    end
  end
end




main