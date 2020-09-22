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
    list = "Planets orbiting #{@star_name}"

    @planets.each_with_index do |planet, i|
      list << "\n#{i + 1}. #{planet.name}"
    end

    return list
  end

  def find_planet_by_name(planet_to_find)
    @planets.each do |planet|
      if planet_to_find.downcase == planet.name.downcase
        return planet
      end
    end
    return "No such planet in this solar system!"
  end
end