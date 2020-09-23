require_relative 'planet'
require_relative 'solar_system'

def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'Blue', 5.97237e24, 1.521e8, 'was once believed to be the centre of the universe.')
  mercury = Planet.new('Mercury', 'Dark Gray', 3.3011e23, 6.966e7, 'is the closest planet to the Sun.')
  venus = Planet.new('Venus', 'White', 4.8675e24, 1.078e8, 'a day is longer than a year')
  mars = Planet.new('Mars', 'Red', 6.417e23, 2.092e8, 'is home to the tallest mountain in the solar system.')

  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)

  puts earth.summary

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')

  puts found_planet
  puts found_planet.summary
end


main