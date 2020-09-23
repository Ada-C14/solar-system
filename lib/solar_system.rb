class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  # list planets in a numbered format
  def list_planets
    list = "Planets orbiting #{@star_name}"

    @planets.each_with_index do |planet, i|
      list << "\n#{i + 1}. #{planet.name}"
    end

    return list
  end

  # takes in a planet and checks against the planets array
  # returns the corresponding instance of the planet
  def find_planet_by_name(planet_to_find)
    @planets.each do |planet|
      if planet_to_find.downcase == planet.name.downcase
        return planet
      end
    end

    # raises an error if there is no match to the elements in planets array
    raise ArgumentError, 'Not on the list of planets to learn about!'
  end
end