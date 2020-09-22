require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'Blue', 5.97237e24, 1.521e8,
                     '"On it, everyone you love, everyone you know, everyone you have ever heard of,
                      every human being who ever was, lived out their lives."')

  wrong_earth = Planet.new('Earth', 'Blue', -12345, 1235, 'i live here')
  solar_system.add_planet(earth)

  list = solar_system.list_planets
  puts list

end

main
