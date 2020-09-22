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
    @planets.each do |planet|
      return planet if planet.name.downcase == planet_name.downcase
    end
  end

  #   @planets.each do |planet|
  #     if planet.name.downcase == planet_name.downcase
  #       return planet
  #     else
  #       return "N/A"
  #     end
  #   end
  # end

end