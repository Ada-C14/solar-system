require_relative "planet"
require_relative "solar_system"

# Method creates two different instances of Planet and prints out some of their attributes.
def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  venus = Planet.new("Venus", "white", 4.867e24, 1.502e8, "Nearly the same size as Earth.")

  solar_system.add_planet(earth)
  solar_system.add_planet(venus)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name("Earth")
  puts found_planet
  puts found_planet.summary

  puts "The distance between Earth and Venus is #{solar_system.distance_between("Earth", "Venus")}km"
end

main