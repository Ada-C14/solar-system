class Solar_system
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    string_list_of_planets = "Planets orbiting #{star_name}:"

    @planets.each_with_index do |planet, i| #bc planet is an instance of the planet class, need to use .name to specifically print the name
      string_list_of_planets += "\n#{i + 1}. #{planet.name}"
    end
    return string_list_of_planets
  end

  def find_planet_by_name(planet_name)

    found_planet = @planets.find { |planet| planet.name.upcase == planet_name.upcase }

    #found_planet ? (return found_planet) : (return "Planet not found")
  end

end