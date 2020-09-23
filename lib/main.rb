require_relative 'planet.rb'
require_relative 'solar_system'
require 'awesome_print'
require 'rainbow'

def menu(choices)
  puts "What would you like to do next?"
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

def main
  solar = SolarSystem.new('Duckstar')
  jupiter = Planet.new('Jupiter', 'Brown', 999, 5, "Likes to eat black holes",
                       favorite_animal: "Meerkat", pronoun: "Her")
  pluto = Planet.new('Pluto', 'Red', 1, 9, "Forever angry at it's planetary exclusion")
  meow = Planet.new('Meow', 'Yellow', 33, 39, 'Has two ears and one tail', pronoun: 'Fur')
  meow2 = Planet.new('Meow', 'Red', 3, 3, 'Meow was previously thought to be a moon of meow')
  solar.add_planet(jupiter)
  solar.add_planet(pluto)
  solar.add_planet(meow)
  solar.add_planet(meow2)

  puts Rainbow("Welcome to the #{solar.star_name} system").color(:yellow)
  choices = ['List Planets', 'Planet Details', 'Exit']
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
    end

    puts "What else?"
    menu(choices)
    choice = get_choice(choices)
  end


end

main