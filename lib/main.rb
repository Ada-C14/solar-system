# Christabel Sebastian
# Last updated, Sept 20. 2020
# Ada C14
# Solar System program: main program

require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new(
     name: "Earth",
     color: :blue,
     mass_kg: 5972e24,
     distance_from_sun_km: 1.49e8,
     fun_fact: "Christabel lives here!"
    )

  puts earth.summary

end

main