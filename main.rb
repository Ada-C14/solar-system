require_relative 'planet'
require_relative 'solar_system'

def get_parameters()
  parameters = {'name' => nil, 'color'=> nil, 'mass in kg' => nil, 'distance from sun in km' => nil, 'fun fact' => nil}
  keys = parameters.keys
  keys.each do |key|
    puts "Please enter planet's #{key}:"
    param = gets.chomp
    parameters[key] = param
  end
  return parameters
end

def add_planet(parameter_hash)
  new_planet = Planet.new(parameter_hash['name'].capitalize, parameter_hash['color'], Float(parameter_hash['mass in kg']),
                          Float(parameter_hash['distance from sun in km']), parameter_hash['fun fact'])
  return new_planet
end

def current_status(solar_system)
  return solar_system.list_planets
end

def planet_details(planet, system)
  planet_object = system.find_planet_by_name(planet)
  return planet_object.summary
end

def get_action
  puts "What do you want to do?"
  puts "Options: 'Exit' | 'Planet Details' | 'Add Planet'"
  puts "\n"
  action = gets.chomp.downcase
  until action == 'exit' || action == 'planet details' || action == 'add planet'
    puts "Sorry, that's not a valid action\n"
    action = get_action
  end
  return action
end

def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'Blue', 5.97237e24, 1.521e8,
                     '"On it, everyone you love, everyone you know, everyone you have ever heard of,
                      every human being who ever was, lived out their lives."')

  mercury = Planet.new('Mercury', 'Gray', 3.3011e23, 69_816_900,
                       'Named after the Greek messenger god Hermes')
  venus = Planet.new('Venus', 'Unknown', 4.8675e24, 108_939_000,
                     'Second brightest natural object in the night sky')
  mars = Planet.new('Mars', 'Red', 6.4272e23, 249_200_000,
                    'Olympus Mons is one of the largest mountains in the solar system')
  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)

  puts solar_system.list_planets
  puts "\n"

  do_stuff = true

  while do_stuff
    action = get_action
    if action == 'exit'
      puts "Thanks for checking out the Solar System!"
      break
    elsif action == "planet details"
      puts current_status(solar_system)
      puts "\n"
      puts "Which planet's details would you like to see?\n"
      user_planet = gets.chomp
      begin
        puts planet_details(user_planet, solar_system)
        puts "\n"
      rescue ArgumentError
        puts "Sorry, that planet isn't in this solar system\n"
      end
    elsif action == "add planet"
      begin
        new_planet = add_planet(get_parameters)
      rescue ArgumentError
        puts "Sorry, that's not a valid planet\n"
        next
      end
      begin
        solar_system.add_planet(new_planet)
        puts "Added planet: #{new_planet.name} \n"
      rescue ArgumentError
        puts "Sorry, that planet is already in the solar system\n"
      end
    end
  end
end

main
