require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new("Sun")
  mercury = Planet.new("Mercury", "light-grey", 3.285e23, 5.800e7, "if you lived on Mercury you'd have a birthday every 3 months.")
  venus = Planet.new("Venus", "white", 4.867e24, 1.080e8, "it is named after the Roman goddess of love and beauty.")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "it is the only planet known to support life.")
  mars = Planet.new("Mars", "red", 6.39e23, 2.066e8, "it has the highest mountain in our solar system (24km)." )
  jupiter = Planet.new("Jupiter", "yellow-orange", 1.898e27, 7.680e8, "it has 79 moons.")
  saturn = Planet.new("Saturn", "yellow-brown", 5.68e26, 1.426e9, "one of Saturn's rings, discovered in 2009, could fit a billion earths." )
  uranus = Planet.new("Uranus", "blue-green", 8.681e25, 2.959e9, "it was the first planet discovered by a telescope in 1781.")
  neptune = Planet.new("Neptune", "blue", 1.024e26, 4.476e9, "a year on Neptune is equivalent to 165 years on Earth.")

  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name("Earth")
  puts found_planet
  puts found_planet.summary
end

main
