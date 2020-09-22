require_relative 'planet'
require_relative 'solar_system'

def main
  puts "☀️️🌎🪐 Welcome to the Build-A-Solar-System Program! 💫☄️🌕"

  solar_system = SolarSystem.new('Sun')

  mercury = Planet.new('Mercury', 'burnt orange', 330, 35.98, 'Aliens live here!')
  venus = Planet.new('Venus', 'pink', 48700, 67.24, 'Both a planet and a goddess!')
  earth = Planet.new('Earth', 'blue-green', 59700, 92.96, 'We have water, air and humans!')
  mars = Planet.new('Mars', 'red', 6420, 141.6, 'Home of the Mar\'s chocolate!')
  jupiter = Planet.new('Jupiter', 'orange, white and brown', 1898000, 483.8, 'I have a weird birthmark.')
  saturn = Planet.new('Saturn', 'green', 56800, 890.8, 'I have more rings than Lebron himself.')
  uranus = Planet.new('Uranus', 'purple', 868000, 17640, 'I get made fun of because of my name :(')
  neptune = Planet.new('Neptune', 'white', 10200, 27930, 'I rule the sea!')
  pluto = Planet.new('Pluto', 'neon green', 14, 5900000, 'I used to be a planet. Take me back pls...')

  nine_planets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]

  nine_planets.each { |planet| solar_system.add_planet(planet) }

  puts solar_system.list_planets
end

main