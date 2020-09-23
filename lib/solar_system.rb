class SolarSystem
  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :planets, :star_name

  def add_planet (planet)
    @planets << planet
  end

  def list_planets
    planet_output = ["Planets orbiting #{@star_name}"]

    @planets.each_with_index do |planet, i|
        planet_output << "#{i+1}. #{planet.name}"
    end

    return planet_output
  end

  def find_planet_by_name(planet)
    to_search = planet.to_s.downcase

    found_planet = @planets.select { |planet| planet.name.to_s.downcase == to_search }

    return found_planet[0]
  end

end