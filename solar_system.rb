class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def star_name
    return @star_name
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def find_planet_by_name(planet)
    return planet
  end

  def list_planets
    planet_list = "Planets orbiting #{@star_name}"
    @planets.each_with_index do |planet, index|
      planet_list+= "\n #{index+1}: #{planet}"
    end
    return planet_list
  end
end

