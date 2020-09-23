require_relative 'planet.rb'
require_relative 'solar_system'
require 'awesome_print'
require 'rainbow'

def menu(choices)
  puts "What would you like to do next?"
  choices.each_with_index { |choice, i| puts "#{i+1}. #{choice}"}
end

def get_choice(max_choice)
  choice = gets.to_i
  until choice > 0 && choice <= max_choice
    puts "Incorrect choice entered"
    menu
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

  puts Rainbow("Welcome to the #{solar.star_name} system").color(:yellow)
  choices = ['List Planets', 'Exit']
  menu(choices)
  choice = get_choice(choices.length)
  until choice == choices.length
    case choice
    when 1
      puts solar.list_planets
    end

    puts "What else?"
    menu(choices)
    choice = get_choice(2)
  end


end



main