class SolarSystem
  attr_reader(:star_name, :planets)

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    all = "Planets orbiting #{@star_name}"
    @planets.each_with_index do |planet,i|
      all += "\n"
      all += "#{i+1}. #{planet.name}"
    end
    return all
  end

  def find_planet_by_name(name)
    @planets.each do |planet|
      if planet.name.downcase == name.downcase
        return planet
      else
        return false
      end
    end
    end


end
