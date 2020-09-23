require_relative 'planet'

class SolarSystem
  # constructor
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :planets, :star_name

  # take an instance of Planet as a parameter and add it to the list of planets.
  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list_of_all_planets = "Planets orbiting #{@star_name}: \n"
    @planets.each_with_index do |planet, i|
      list_of_all_planets += "#{i + 1}. #{planet.name} \n"
    end
    return list_of_all_planets
  end
  
  # takes the name of a planet as a string, and returns the corresponding instance of Planet
  def find_planet_by_name(planet_name)
    # instance_of_planet = @planets.find { |planet| planet.name.downcase == planet.name.downcase}
    @planets.each do |planet|
      if planet.name == planet_name
        return planet
      end
    end
  end
end

