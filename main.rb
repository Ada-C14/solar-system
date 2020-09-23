require_relative 'planet'
require_relative 'solar_system'

earth = Planet.new("Earth",'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
venus = Planet.new("Venus", "yellow-orange", "venusy mass", "venusy distance", "venusy fact")
# puts earth.summary()

solar_system = SolarSystem.new('Sol')


solar_system.add_planet(earth)
solar_system.add_planet(venus)

list = solar_system.list_planets

def welcome_message
  puts "Welcome to the Planetarium!"
  puts "Please select the number that corresponds with what you'd like to do"
end

def user_options
  puts "1. Learn about a planet
2. Add planet
3. Exit"
end

def add_planet(solar_system, planet_list)
  puts "What's this planet's name?"
  name = gets.chomp
  puts "What's #{name}'s color?"
  color = gets.chomp
  puts "What's #{name}'s mass?"
  mass = gets.chomp
  puts "What's #{name}'s distance from the sun?"
  distance = gets.chomp
  puts "What's a fun face about #{name}?"
  fact = gets.chomp
  new_planet = Planet.new(name, color, mass, distance, fact)

  solar_system.add_planet(new_planet)

  puts planet_list

end
def planet_info(planet_list, solar_system)
  puts planet_list
  puts "Please input a planet name"
  users_planet = gets.chomp.downcase
  found_planet = solar_system.find_planet_by_name(users_planet)
  puts found_planet.summary()
end

def user_choice(planet_list, solar_system)
  user_input = gets.chomp.to_i
  until user_input == 3
    if user_input == 1
      planet_info(planet_list, solar_system)
      user_input = gets.chomp.to_i
    elsif user_input == 2
      add_planet(planet_list, solar_system)
      user_input = gets.chomp.to_i
    elsif user_input == 3
      exit
    end
  end
end

welcome_message
user_options
user_choice(list, solar_system)


# puts list

# found_planet = solar_system.find_planet_by_name()

# found_planet is an instance of class Planet
# puts found_planet
# => #<Planet:0x00007fe7c2868ee8>

# puts found_planet.summary
# => Earth is a blue-green planet ...