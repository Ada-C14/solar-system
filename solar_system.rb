
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
    star_string = "\nPlanets orbiting #{star_name}\n"
    @planets.each_with_index do |planet, index|
      star_string<< "#{index + 1}.  #{planet.name}\n"
    end
    return star_string
  end

  def find_planet_by_name(name_string)
    match_arr = @planets.select {|planet| planet.name.upcase == name_string.upcase}
    return match_arr[0] if match_arr.length == 1
    if match_arr.length == 0
      raise ArgumentError, "Planet not found: #{name_string}"
    else
      raise ArgumentError, "More than one match, try again"
    end
  end
end

