class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = Array.new
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    return "Planets orbiting #{@star_name}:\n", @planets.each_with_index.map { |planet, i| "#{i+1}. #{planet.name}" }
  end

  def find_planet_by_name(planet_name)
    list_of_matching_planets = []

    @planets.each do |planet|
      if planet.name.capitalize == planet_name.capitalize
        list_of_matching_planets << planet
      end
    end

    return list_of_matching_planets
  end

end