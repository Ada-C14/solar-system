# Pauline Chane (@PaulineChane)
# Ada Developers Academy C14
# Solar System Assignment - solar_system.rb Solar System Class
# 09/23/2020

# Solar System class object
class SolarSystem
  # field accessors/readers
  attr_reader :star_name, :planets
  # constructor
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # other accessors/readers
  # list all planets in @planets array, return as string
  def list_planets
    planet_list = "Planets orbiting #{@star_name}"
    (0...@planets.length).each do |i|
      planet_list += "\n#{i + 1}. #{@planets[i].name}"
    end
    return planet_list
  end

  # returns instance of Planet object in @planet that has matching (not case sensitive) planet.name to input string
  # if multiple planets have same name in @name field, returns first instance
  # if no planets match, returns nil
  def find_planet_by_name(planet_name)
    return @planets.detect{|planet| planet.name.downcase == planet_name.downcase}
  end

  # returns, assuming all planets are in lined up a straight line, distance between two planets (absolute value)
  # as noted by two input parameters (two planet names)
  # if neither planet is found in SolarSystem object, returns nil
  def distance_between(planet_name1, planet_name2)
    planet1 = self.find_planet_by_name(planet_name1)
    planet2 = self.find_planet_by_name(planet_name2)

    return planet1.nil? || planet2.nil? ? nil : (planet2.distance_from_sun_km - planet1.distance_from_sun_km).abs
  end

  # mutators
  # add planet to @planets array
  # returns true upon successful addition of Planet object
  # otherwise, nothing is added and function returns false
  def add_planet(planet)
    if planet.is_a?(Planet)
      @planets << planet
    else
      return false
    end
    return true
  end

end