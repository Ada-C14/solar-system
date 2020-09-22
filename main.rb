require_relative "planet"
require_relative "solar_system"

def main
   earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
   puts earth.name
   puts earth.summary

   mercury = Planet.new('Mercury', 'gray', 5.972e24, 1.496e8, 'Closest planet to the sun')
   puts mercury.name
   puts mercury.summary

   solar_system = SolarSystem.new('Sol')

   solar_system.add_planet(earth)
   solar_system.add_planet(mercury)
   list = solar_system.list_planets
   puts list
end

puts main

