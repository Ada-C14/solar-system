require_relative 'planet.rb'

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(new_planet)
    @planets << new_planet
  end

  def list_planets
    list = "\nPlanets orbiting #{@star_name}:\n"
    @planets.each_with_index do |planet, i|
      list += "#{i+1}. #{planet.name}\n"
    end
    return list
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet.name == planet_name.capitalize
        return planet
      end
    end
    return raise ArgumentError, 'Planet not in star system'
  end

  # def distance_between(planet_1, planet_2) #OPTIONAL
  #   return ((planet_1.distance_from_sun) - (planet_2.distance_from_sun)).abs #still have to make method for returning distance form sun
  # end

end