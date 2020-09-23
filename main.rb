require_relative "Planet"
require_relative "Solar_system"

def main
  # ... do stuff with planets ...
  earth = Planet.new("Earth", "blue/green", 5.972e24, 1.496e8, "Only planet known to support life")
  mars = Planet.new("Mars", "red/orange", 6.39e23, 2.11e8, "Pieces of mars have fallen on earth")

  puts earth.summary
  puts mars.summary

  solar_system = Solar_system.new("Sun")
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)

  puts solar_system.list_planets
<<<<<<< HEAD
  puts solar_system.find_planet_by_name("venus")
  found_planet = solar_system.find_planet_by_name("earth")
  puts found_planet.summary
=======
  puts solar_system.find_planet_by_name("eArth")
>>>>>>> 06c57e95f56263c5f605a2234123c0ed42616114
end

main