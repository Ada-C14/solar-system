class SolarSystem
  attr_reader :star_name, :planets, :name

  def initialize(star_name)
    @star_name = star_name
    @planets = Array.new
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    print_out_string = "Planets orbiting the #{@star_name}:"
    planets.each_with_index do |planet, i|
      print_out_string += "\n\t#{i + 1}. #{planet.name}"
    end
    return print_out_string
  end

  def find_planet_by_name(planet)
    return @planets.select { |instance| instance.name == planet.capitalize }
  end
end