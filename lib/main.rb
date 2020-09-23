require_relative 'planet.rb'
require_relative 'solar_system'
require 'awesome_print'
require 'rainbow'

def menu(choices)
  choices.each_with_index { |choice, i| puts "#{i+1}. #{choice}"}
end

def get_choice(choices)
  choice = gets.to_i
  until choice > 0 && choice <= choices.length
    puts "Incorrect choice entered"
    menu(choices)
    choice = gets.to_i
  end
  return choice
end

def discard_whitespace
  input = gets.strip
  until input != ""
    input = gets.strip
  end

  return input
end

def get_positive_num
  input = gets.to_f
  until input > 0.0
    puts "Please enter a positive number!"
    input = gets.to_f
  end

  return input
end

def get_optional
  input = gets.strip
  return nil if input == ''
  return input
end

def get_planet(solar_system)
  planet = discard_whitespace
  found_planets = solar_system.find_planet_by_name(planet)
  while found_planets.empty?
    return nil if planet == 'q'
    if planet == 'l'
      puts solar_system.list_planets
    else
      puts "Planet not found. Please try again or enter q to quit"
      puts "Enter l for a list of planets"
    end
    planet = discard_whitespace
    found_planets = solar_system.find_planet_by_name(planet)
  end

  return found_planets[0] if found_planets.length == 1
  puts "There were multiple planets found with the same name"
  puts "Which one did you want?"
  choices = []
  found_planets.each_with_index do |planet, i|
    puts "#{i + 1}. #{found_planets[i].summary}"
    choices << planet.name
  end

  menu(choices)
  choice = get_choice(choices)

  return found_planets[choice-1]

end

def add_planet_from_user
  puts "What was the name?"
  name = discard_whitespace
  puts "The color?"
  color = discard_whitespace
  puts "The mass in kg?"
  mass = get_positive_num
  puts "The distance from the sun in km?"
  distance = get_positive_num
  puts "A fun fact?"
  fun_fact = discard_whitespace
  puts "\nThe following fields are optional. Just hit enter to skip if wanted"
  puts "The favorite animal of the planet? The default is the cat"
  puts "Seriously, cats rule"
  favorite_animal = get_optional
  puts "The planet's posessive pronoun? \"Their\" will be used as default"
  puts "Ex: Their favorite animal is the cat"
  pronoun = get_optional
  puts favorite_animal, pronoun
  new_planet = Planet.new(name, color, mass, distance, fun_fact, favorite_animal, pronoun)
  return new_planet
end

def main
  solar = SolarSystem.new('Duckstar')
  jupiter = Planet.new('Jupiter', 'Brown', 999, 5, "Likes to eat black holes",
                       "Meerkat", "Her")
  pluto = Planet.new('Pluto', 'Red', 1, 9, "Forever angry at their planetary exclusion", nil, nil)
  meow = Planet.new('Meow', 'Yellow', 33, 39, 'Has two ears and one tail', nil, 'Fur')
  meow2 = Planet.new('Meow', 'Red', 3, 3, 'Meow was previously thought to be a moon of meow',
                     nil, "Fur")
  solar.add_planet(jupiter)
  solar.add_planet(pluto)
  solar.add_planet(meow)
  solar.add_planet(meow2)

  puts Rainbow("Welcome to the #{solar.star_name} system").color(:yellow)
  choices = ['List Planets', 'Planet Details', 'Add Planet', 'Distance Between Planets', 'Exit']
  menu(choices)
  choice = get_choice(choices)
  until choice == choices.length
    case choice
    when 1
      puts solar.list_planets
    when 2
      puts "What planet would you like to learn about?"
      input = gets.chomp
      found_planets = solar.find_planet_by_name(input)
      if found_planets.empty?
        puts "We found no planets by that name"
      else
        puts "We found the following planet(s) by that name:"
        found_planets.each_with_index do |planet, i|
          puts "#{i + 1}. #{found_planets[i].summary}"
        end
        puts
      end
    when 3
      puts "Wow! You discovered a new planet of #{solar.star_name}??"
      puts "Let's hear all about it!"
      solar.add_planet(add_planet_from_user)
    when 4
      puts "We will find the difference between two planets"
      puts "Enter the first planet"
      planet1 = get_planet(solar)
      if planet1
        puts "Now the second planet!"
        planet2 = get_planet(solar)
        until planet1 != planet2
          puts "Planets cannot be the same! Try again!"
          planet2 = get_planet(solar)
        end
        puts "The distance between #{planet1.name} and #{planet2.name} is "\
      "#{solar.distance_between(planet1, planet2)} km" if planet2
      end
    end


    puts "What else?"
    menu(choices)
    choice = get_choice(choices)
  end
end

main