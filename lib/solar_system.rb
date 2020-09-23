class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    raise ArgumentError.new("Planet name must be a string") if star_name.class != String
    raise ArgumentError.new("Planet name is empty!") if star_name.strip == ''
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    raise ArgumentError.new("Planet is not of Planet class") if planet.class != Planet
    @planets << planet
  end

  def list_planets
    if @planets.length == 0
      puts "There are no planets in #{@star_name}"
      return nil
    end
    string = "Planets orbitting #{@star_name}\n"
    @planets.each_with_index do |planet, i|
      string << Rainbow("#{i+1}. #{@planets[i].name}\n").color(rand(1..7))
    end
    return string
  end

  def find_planet_by_name(planet_name)
    return nil if @planets.empty?
    return @planets.find_all { |planet| planet.name.casecmp?(planet_name)}
  end

  def distance_between(planet1, planet2)
    unless planet1.class == Planet && planet2.class == Planet
      raise ArgumentError.new("Object not of class Planet")
    end
    return planet1.distance_from_sun_km - planet2.distance_from_sun_km.round(2)
  end
end