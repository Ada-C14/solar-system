
#SolarSystem is responsible for keeping track of a collection of instances of Planet.
class SolarSystem
  attr_reader :star_name, :planet

  def initialize(star_name)
    @star_name = star_name
    @planets = [] #will store an array of planets
  end

  # will take an instance of Planet as a parameter and add it to the list of planets.
  def add_planet(planet)
    @planets << planet
  end

  # will return (not puts) a string containing a list of all the planets in the system.
  def list_planet
    list = "Planets orbiting #{star_name}\n"
    @planets.each_with_index {|planet, i| list << "#{i+1}. #{planet.name}\n"
    return list
  end

end
