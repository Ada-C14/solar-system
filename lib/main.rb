require_relative 'planet.rb'
require_relative 'solar_system'
require 'awesome_print'
require 'rainbow'

puts Rainbow("hi").blue

def main
  jupiter = Planet.new('Jupiter', 'Brown', 999, 5, "Likes to eat black holes",
                       favorite_animal: "Meerkat", pronoun: "Her")

  pluto = Planet.new('Pluto', 'Red', 1, 9, "Forever angry at it's planetary exclusion")
  puts jupiter.summary
  puts pluto.summary

  meow = Planet.new('Meow', 'Yellow', 33, 39, 'Has two ears and one tail', pronoun: 'Fur')
  puts meow.summary

  solar_system = SolarSystem.new('Cutestar')
  solar_system.add_planet(jupiter)
  solar_system.add_planet(pluto)
  solar_system.add_planet(meow)
  puts solar_system.list_planets

  found_planets = solar_system.find_planet_by_name('meOw')
  ap found_planets
  found_planets.each do |planet|
    puts planet.summary
  end

  print "The distance between #{jupiter.name} and #{pluto.name} is "
  print "#{solar_system.distance_between(jupiter, pluto)}\n"
end

main