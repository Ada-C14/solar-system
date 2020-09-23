
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

  def find_planet_by_name(name)
   planet_name = name.upcase
   @planets.each do |planet|
     if planet.name.upcase == planet_name
       return planet
      else
      return "Sorry,this planet is in the process of being created many light years       away and cannot be located just yet."
      end
   end
  end
end
