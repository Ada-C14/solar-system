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
    list = "Planets orbiting #{@star_name}\n"

    @planets.each_with_index { |planet, i| list << "#{i + 1}.  #{planet.name}\n" }

    return list
  end

  def find_planet_by_name(planet_name)
    @planets.each { |planet| return planet if planet.name.upcase == planet_name.upcase }

    raise ArgumentError.new("Planet named #{planet_name} does not exist.")
  end

  def distance_between(first_planet_name, second_planet_name)
    first_planet_distance = find_planet_by_name(first_planet_name).distance_from_sun_km
    second_planet_distance = find_planet_by_name(second_planet_name).distance_from_sun_km

    return "#{first_planet_name} is #{(first_planet_distance - second_planet_distance).abs} kilometers away from #{second_planet_name}."
  end
end