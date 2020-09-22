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
  # list all planets in @planets array, return as string
  def list_planets
    planet_list = "Planets orbiting #{@star_name}"
    (0...@planets.length).each do |i|
      planet_list += "\n#{i+1}. #{@planets[i].name}"
    end
    return planet_list
  end

  # returns instance of Planet object in @planet that has matching (not case sensitive) planet.name to input string
  # if multiple planets have same name in @name field, returns first instance
  # if no planets match, returns nil
  def find_planet_by_name(planet_name)
    return @planets.detect{|planet| planet.name == planet_name}
  end

  # mutators
  # add planet to @planets array
  def add_planet(planet)
    planets.append(planet)
  end


end