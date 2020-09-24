require_relative 'planet.rb'

# attr_reader :star_name
# attr_reader :planets

class SolarSystem

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
    return @planet
  end

  def list_planets
    list_planets = "\nPlanets orbiting #{@star_name}:\n"
    @planets.each_with_index do |planet, index|
      list_planets += "#{index + 1}. #{planet.name}\n"
    end
    list_planets
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet_name.downcase == planet.name.downcase
        return planet
      end
    end
    return "No."
  end
end


