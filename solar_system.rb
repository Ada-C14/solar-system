require_relative 'planet'

class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list = "\nPlanets orbiting #{star_name}:\n"
    @planets.each_with_index do |planet, index|
      index += 1
      list += "#{index}. #{planet.name}\n"
    end
    return list
    end

  def find_planet_by_name(input_name)
   @planets.each do |single_planet|
     if single_planet.name.downcase == input_name.downcase
       return single_planet.summary
     end
     end
      return "Sorry,this planet is in the process of being created many light years away and cannot be located just yet."
      end
end
