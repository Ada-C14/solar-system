# frozen_string_literal: true
require 'awesome_print'
require_relative 'planet'
require_relative 'milky_way'

def create_solar_system
  new_solar_system = SolarSystem.new('Sun')

  earth = Planet.new('EARTH', 'bluish-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  pluto = Planet.new('PLUTO', 'blue', 1.309e22, 5.906e38, 'Known as a dwarf planet now!')

  saturn = Planet.new('SATURN', 'yellow-ish brown', 5.683e26, 1.434, "This planet's atmosphere is made up mostly of hydrogen (H2) and helium (He).")

  new_solar_system.add_planet(earth)
  new_solar_system.add_planet(pluto)
  new_solar_system.add_planet(saturn)

  new_solar_system
end

def get_user_action_choice
  puts 'What would you like to do?'

  choices = ['List Planets', 'Planets Details', 'Add Planet', 'Distance', 'Exit']

  choices.each do |choice|
    puts choice.to_s
  end

  action_choice = gets.chomp.upcase

  puts ''

  ap action_choice
end

def get_user_planet_choice
  puts 'Which planet would you like to learn about?'

  planet_choice = gets.chomp.upcase

  puts ''

  planet_choice.upcase
end

def get_new_user_planet
  puts "Let's add a new planet to our solar system! Please enter the information below:"
  puts ''
  puts 'Planet name:'
  name = gets.chomp.upcase

  puts 'Planet color:'
  color = gets.chomp.upcase

  puts "Planet's mass in kg:"
  mass = gets.chomp.to_f
  while mass <= 0
    puts "Invalid mass value! Enter the mass value again"
    mass = gets.chomp.to_f
  end

  puts "Planet's distance from the sun in km:"
  distance = gets.chomp.to_f
  while distance <= 0
    puts "Invalid distance value! Enter the distance value again"
    distance = gets.chomp.to_f
  end

  puts 'A fun fact about the planet:'
  fun_fact = gets.chomp.upcase
  puts ''

  new_planet = Planet.new(name, color, mass, distance, fun_fact)

  new_planet
end



def main
  the_solar_system = create_solar_system

  begin_program = true
  # The planet show starts
  while begin_program
    # 1st - Get user's choice of the planet's show
    user_choice = get_user_action_choice

    case user_choice.upcase

    when 'LIST PLANETS'
      puts the_solar_system.list_planets

    when 'PLANET DETAILS'
      planet_name = get_user_planet_choice
      planet_found = the_solar_system.find_planet_by_name(planet_name)

      if planet_found
        puts planet_found.summary
      else
        puts "Sorry - #{planet_name} does not exist yet!\n"
      end

    when 'ADD PLANET'
      new_planet = get_new_user_planet
      the_solar_system.add_planet(new_planet)

    when "DISTANCE"
      planet_name_1 = get_user_planet_choice
      planet_name_2 = get_user_planet_choice

      puts the_solar_system.distance_between(planet_name_1, planet_name_2)

    when 'EXIT'
      begin_program = false

    else
      puts "You entered an invalid option, let's try that again"
    end
  end
end

main
