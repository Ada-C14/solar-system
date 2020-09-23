require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Leonidas")

  zollerndamm = Planet.new("Zollerndamm", "silver", 9384, 23843, "Regal silver in color")
  blisse = Planet.new("Blisse", "pink", 8394, 6637, "Shining brighter than all other planets in Leonidas")
  dahlem = Planet.new("Dahlem", "gold", 748, 928398, "It is believed gold has been seen glittering on its surface")

  solar_system.add_planet(zollerndamm)
  solar_system.add_planet(blisse)
  solar_system.add_planet(dahlem)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name("Dahlem")

  puts found_planet

  puts found_planet.summary


  stiletto = Planet.new("Stiletto", "yellow", 2398, 98347, "Resembles the brilliant yellow of a larch tree in Autumn")

  puts "#{stiletto.name} has shown to be a promising new source of beauty in Space."

end

main