require_relative 'lib/planet'
require_relative 'lib/solar_system'

# Create an instance add all Planets and print the list (W2.4)
def create_solar_system

  # Instantiate Solar System
  solar_system = SolarSystem.new('Sun')

  # Add instances of planets to instance of solar system
  mercury = Planet.new('Mercury','dark grey',3.30e23, 57.9, 'Is hot, but not too hot for ice')
  solar_system.add_planet(mercury)

  mars = Planet.new('Mars','pale yellow', 6.42e23, 227.9,'Had a thicker atmosphere in the past')
  solar_system.add_planet(mars)

  venus = Planet.new('Venus','pale yellow', 4.87e24, 108.2,'A day on Venus is longer than a year')
  solar_system.add_planet(venus)

  earth = Planet.new('Earth','blue',5.97e24, 149.6, 'Is the only planet known to support life!')
  solar_system.add_planet(earth)

  return solar_system
end
# Add a planet details option to the control loop(W3.2)

def cli_planet_details (solar_system)
  print"Enter a planet name: "
  planet_name = gets.chomp # ask them for the name of the planet they wish to learn about
  planet = solar_system.find_planet_by_name(planet_name)
  if planet.nil?
    puts "This planet isn't in our system, if you want to add you it, chooe the option 3 below!"
  else
    puts planet.summary
  end
end

# Add an add planet option to the control loop(W3.3)
def add_planet (solar_system)
  print"Enter a planet name: "
  planet_name = gets.chomp # ask them for the name of the planet they wish to learn about
  planet = solar_system.find_planet_by_name(planet_name)
  if planet.nil?
    # Ask the user for details about the planet (W3.3)
    puts"What is the planet color? "
    planet_color = gets.chomp #

    puts"What is the planet mass kg?: "
    planet_mass = gets.chomp.to_i #

    puts"What is the planet distance from sun? "
    planet_distance = gets.chomp.to_i #

    puts" What is a fun fact about the planet?"
    planet_fun_fact = gets.chomp #
    # Create a new instance of Planet with that info, and add to solar_system(W3.3)
    new_planet = Planet.new(planet_name, planet_color, planet_mass, planet_distance, planet_fun_fact)
    solar_system.add_planet(new_planet)
    puts "Planet added with success!"
    puts new_planet.summary
  else
    puts "That planet already exists!"
    puts planet.summary
  end
end
def menu
  puts "Choose the number of options you can see!:\n 1 - planet list\n"+" 2 - planet details\n"+" 3 - add planet\n"+" 4 - exit\n"
end

# Enter a control loop that repeatedly asks the user what to do next (W3.1)
def cli(solar_system) # command line interface
  puts "**** Welcome do the Planetarium! ****"
  done = false
  until done
    menu
    user_command = gets.chomp
    case user_command
    when "4"
      done = true
    when "1"
      puts solar_system.list_planets
    when "2"
     cli_planet_details(solar_system)
    when "3"
      add_planet(solar_system) # Display details for that planet
    else
      puts "Invalid number, try again!"
    end
  end
end

# Create a method main (W1.3)
def main
  solar_system = create_solar_system
  cli(solar_system)
end

main




