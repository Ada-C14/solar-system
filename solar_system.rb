require_relative 'planet'

class SolarSystem

  attr_reader :planets, :star_name

  # constructor
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # take an instance of Planet as a parameter and add it to the list of planets.
  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    count = 1
    list_of_all_planets = "Planets orbiting #{@star_name}: \n"
    @planets.each do |planet|
      list_of_all_planets += "#{count}. #{planet.name} \n"
      count += 1
    end
    return list_of_all_planets
  end
  
  # takes the name of a planet as a string, and returns the corresponding instance of Planet
  def find_planet_by_name(planet_name)
    instance_of_planet = @planets.find { |planet| planet.name.downcase == planet.name.downcase}
    return instance_of_planet
  end

end