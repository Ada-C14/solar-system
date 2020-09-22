# Pauline Chane (@PaulineChane)
# Ada Developers Academy C14
# Solar System Assignment - solar_system.rb Solar System Class
# 09/23/2020

# Solar System class object
class SolarSystem
  # field accessors
  attr_reader :star_name, :planets
  # constructor
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # other accessors

  # mutators
  # add planet to @planets array
  def add_planet(planet)
    planets.append(planet)
  end
end