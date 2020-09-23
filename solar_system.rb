class SolarSystem

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
    return @planets
  end

  def list_planets
    planet_string = "Planets orbiting #{@star_name} "
    @planets.each_with_index do |planet, index|
      planet_string << "\n#{index + 1}. #{planet}"
    end
    return planet_string
  end

  def find_planet_by_name(name)
    @planets.each do |planet|
      if name.casecmp?(planet.name)# if we access with :name, still a symbol
        return planet
      end
    end
    return false

  end

end
