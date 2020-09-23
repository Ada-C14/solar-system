class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet_instance)
    @planets << planet_instance
  end

  def list_planets
    list = "Planets orbiting the #{star_name}"
    @planets.length.times do |index|
      list_item = "\n #{index + 1}. #{@planets[index].name}"
      list += list_item
    end
    return list
  end

  def find_planet_by_name(planet)
    planet = planet.downcase
    planet_instance = nil
    @planets.length.times do |index|
      planet_instance = @planets[index] if @planets[index].name.downcase == planet
    end
    return planet_instance
  end
end