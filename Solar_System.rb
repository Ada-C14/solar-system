class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
    @list_of_planets = []

  end

  def add_planet(planet)
    @planets << planet
  end

  # I don't get why .name doesn't work
  def list_planets
    puts "Planets orbiting #{star_name}:"

    @planets.each_with_index do |planet, i|
      @list_of_planets << "#{i+1}. #{planet.name}"
    end
    return @list_of_planets
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet == planet_name
        return planet.summary
      end
    end
    return "Invalid planet."
  end
end