require_relative 'planet'
require_relative 'solar_system'

def main

  mercury = Planet.new('Mercury', 'dark-gray', 3.3011e23, '%.1e' %58e6, 'A year on Mercury is 88 Earth days.')
  saturn = Planet.new('Saturn', 'pale-yellow and orange',5.638e26,'%.3e' %1.4935e9,'Saturn is the least dense planet in the Solar System.')
  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(mercury)
  solar_system.add_planet(saturn)

  run = true
  puts "Welcome to the planet info center!"
  puts "We need your help adding planets to our list."
  while run
    puts 'What would you like to do next?'
    puts '1. type ls to list planets'
    puts '2. type pd to list planet details'
    puts '3. type ap to add a planet to the list'
    puts '4. type q to quit'
    choice = gets.chomp
    if choice[0].downcase == 'q' || choice == 4
      run = false
    elsif choice.downcase == 'ls' || choice == 1
      list = solar_system.list_planets
      puts list
    elsif choice.downcase == 'pd' || choice == 2
      puts get_details(solar_system)
    elsif choice.downcase == 'ap' || choice == 3
      add_planet(solar_system)
      puts "\nGreat job, you have added a new planet to the list!"
      puts "Type ls or pd to check it out!\n\n"
    else
      puts "I didn't understand your choice."
    end
  end


end

def get_details(solar_system)
  puts 'What planet would you like to learn more about?'
  choice = gets.chomp
  planet = solar_system.find_planet_by_name(choice)
  return planet.summary
end

def add_planet(solar_system)
  puts 'What is the name of the planet you would like to add?'
  name = gets.chomp
  puts "What is the color of #{name}?"
  color = gets.chomp
  puts "What is the mass (in kg) of #{name}?"
  mass = gets.chomp.to_f
  puts "What is the distance of #{name} from it's star (in km)?"
  distance = gets.chomp.to_f
  puts "What is a fun fact about #{name}?"
  fun_fact = gets.chomp
  custom = Planet.new(name, color, '%.2e' %mass, '%.2e' %distance, fun_fact)
  solar_system.add_planet(custom)
end

main
