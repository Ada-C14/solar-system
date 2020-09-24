require_relative 'planet.rb'
require_relative 'solar_system.rb'


def create_solar_system #factory setup the initial state
  solar_system = SolarSystem.new('Sol')

  #name, color, mass_kg, distance_from_sun_km, fun_fact
  earth = Planet.new('Earth', 'Blue', '3.09822e21', '1.12343e6', 'it is nicknamed the blueberry')
  mercury = Planet.new('Mercury', 'Grey', '3.29903e2', '1.349900e2', 'it has the most craters in the solar system')
  moon = Planet.new( 'Moon', 'Golden', '1.2332e2', '1.12332e1', 'It has active tectonic systems')
  venus = Planet.new('Venus', 'orange', '2.323442e2', '3.44211e2', 'A day on Venus is longer than a year on earth')

  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  solar_system.add_planet(moon)
  solar_system.add_planet(venus)

  return solar_system

end

def ask_user_choice
    puts "Welcome to the Planet Info session! What would you like to do?"
    options = ["list planets", "planet details", "add planet", "exit"]
    options.each do |choice|
      puts "*#{choice}"
    end
    user_choice = gets.chomp
    return user_choice
end

def ask_user_planet_choice
  puts "What is the name of the planet you wish to learn about?"

  planet_choice = gets.chomp

  return planet_choice
end

def ask_user_new_planet_details
  puts "Let's make up a new planet! Give me the details!:"
  puts "Planet name?"
  name = gets.chomp.
  puts "Planet color?"
  color = gets.chomp
  puts "Planet's mass in kilograms?"
  mass = gets.chomp
  puts "Planet's distance from in the sun in kilometers?"
  distance = gets.chomp
  puts "Fun fact about planet?"
  fun_fact = gets.chomp
  puts ""

  new_planet = Planet.new(name, color, mass, distance, fun_fact)

  return new_planet
end

def main
  my_solar_system = create_solar_system
  while ask_user_choice != "exit"

    user_choice = ask_user_choice

    case user_choice.upcase
    when "LIST PLANETS"
      puts my_solar_system.list_planets

    when "PLANET DETAILS"
      planet_name = ask_user_new_planet_details
      found_planet = my_solar_system.find_my_planet_by_name(found)
      if (found_planet)
        puts found_planet.summary
      else
        puts "I couldn't find a planet by the name #{planet_name}.\n\n"
      end

    when "ADD PLANET"
      new_planet = ask_user_planet_choice
      my_solar_system.add_planet(new_planet)

    when "EXIT"
      exit
    else
      puts "Hmm...I did not get that. Try again?"
    end
  end

end
main #why do we invoke main as the last line of your program?
