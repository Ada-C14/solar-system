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
    summary_list = "Planets orbiting <#{@star_name}>\n"
    @planets.each.with_index(1) { |planet, idx| summary_list << "#{idx}. #{planet.name}\n"}
    return summary_list
  end

  def check_valid_planet(planet)
    @planets.each do |one_planet|
      if one_planet.name.upcase == planet.upcase
        return one_planet
      end
    end
    raise ArgumentError, "#{planet} is not part of the given solar system."
  end

  def find_planet_by_name(planet)
    found_planet = check_valid_planet(planet)
    return found_planet
  end

  def distance_between(planet_1, planet_2)
    planet_1 = check_valid_planet(planet_1)
    planet_2 = check_valid_planet(planet_2)
    distance_bw_planets = (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs
    return distance_bw_planets
  end

  def user_add_planet
    puts "We need the following details about the planet:"
    puts "What is the name of the planet?"
    planet_name = gets.chomp
    puts "What color is the planet?"
    planet_color = gets.chomp
    puts "What is the mass (in kg) of the planet?"
    planet_mass_kg = gets.chomp.to_i
    puts "What is the planet's distance from the sun (in km)?"
    planet_dist_km = gets.chomp.to_i
    puts "What is a fun fact about the planet?"
    planet_fun_fact = gets.chomp

    new_planet = Planet.new(
        planet_name,
        planet_color,
        planet_mass_kg,
        planet_dist_km,
        planet_fun_fact
    )

    add_planet(new_planet)
  end
end