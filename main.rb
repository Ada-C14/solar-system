require_relative "planet"
require_relative "solar_system"

def main
   earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
   puts earth.name
   puts earth.summary

   mercury = Planet.new('Mercury', 'gray', 5.972e24, 1.496e8, 'Closest planet to the sun')
   puts mercury.name
   puts mercury.summary

   venus = Planet.new('venus', 'white', 5.972e24, 1.496e8, 'Hottest planet in the solar system')
   mars = Planet.new('Mars', 'red', 5.972e24, 1.496e8, 'It is roughly half the size of Earth')
   saturn = Planet.new('Saturn', 'yellow', 5.972e24, 1.496e8, 'You cannot stand on Saturn.')
   uranus = Planet.new('Uranus', 'blue-green', 5.972e24, 1.496e8, 'Known as the “sideways planet” because it rotates on its side')
   neptune = Planet.new('Neptune', 'Blue', 5.972e24, 1.496e8, 'Has the strongest winds of any planet in the Solar System')
   jupiter = Planet.new('Jupiter', 'yellow-orange', 5.972e24, 1.496e8, 'It is the largest planet.')

   solar_system = SolarSystem.new('Sol')

   solar_system.add_planet(earth)
   solar_system.add_planet(mercury)
   solar_system.add_planet(venus)
   solar_system.add_planet(mars)
   solar_system.add_planet(saturn)
   solar_system.add_planet(uranus)
   solar_system.add_planet(neptune)
   solar_system.add_planet(jupiter)

   list = solar_system.list_planets
   puts list

   found_planet = solar_system.find_planet_by_name('Earth')

   # found_planet is an instance of class Planet
   puts found_planet
   # => #<Planet:0x00007fe7c2868ee8>

   puts found_planet.summary
   #Wave 3
   puts "Please enter either list planets, planet details, add planet or exit"
   next_step = gets.chomp

   while true
      if next_step == "list planets"
         puts solar_system.list_planets
      elsif next_step == "exit"
         break
      elsif next_step == "planet details"
         puts "What's the name of the planet?"
         planet_name = gets.chomp
         planet_instance = solar_system.find_planet_by_name(planet_name)
         if planet_instance == nil
            puts "Could not find planet #{planet_name}"
         else
            puts planet_instance.summary
         end
      elsif next_step == "add planet"
         planet_details = solar_system.add_a_new_planet
      else
         puts "Not valid. Please try again"
      end
      puts "What do you want me to do?"
      next_step = gets.chomp
   end




end

puts main

