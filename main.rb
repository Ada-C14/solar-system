require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Handshakes in the Hamptons')
  emma = Planet.new('Emma', 'red', 25000000000, "500 million", "The entire surface of this planet is made of trampolines")
  india = Planet.new('India', 'yellow', 780000000, '400 million', 'Every body of water is made up of wine')
  jasmine = Planet.new('Jasmine', 'pink', 1230000, '600 million', 'The only food source on this planet is eggs')
  collin = Planet.new('Collin', 'orange', 69000000, '800 million', 'On this planet, everyone falls in love with everyone')
  francis = Planet.new('Francis', 'green', 123000000, '300 million', 'Humans here have REALLY hairy arms, which allows them to fly')
  shaila = Planet.new('Shaila', 'lavender', 839000000, '900 million', 'All men on this planet take the form of Edward or Jacob')
  amadi = Planet.new('Amadi', 'purple', 9990000, '700 million', 'This planet is covered in an invasive species of mushrooms introduced by Earth humans')

  solar_system.add_planet(emma)
  solar_system.add_planet(india)
  solar_system.add_planet(jasmine)
  solar_system.add_planet(collin)
  solar_system.add_planet(francis)
  solar_system.add_planet(shaila)
  solar_system.add_planet(amadi)

  planet_list = solar_system.list_planets
  puts planet_list

  found_planet = solar_system.find_planet_by_name('india')
  puts found_planet
  puts found_planet.summary

end

main