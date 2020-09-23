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

  #Taking string, planet, and returning instance planet by
  # pushing into an instance variable array
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

  def add_new_planet
    print "Which planet would you like to add? > "
    new_planet_name = gets.chomp
    print "What's the color? > "
    new_planet_color = gets.chomp
    print "What's the mass? > "
    new_planet_mass = gets.chomp
    print "Distance from the sun? > "
    new_planet_distance = gets.chomp
    puts "What about a fun fact?:"
    new_planet_fact = gets.chomp.capitalize

    new_planet = Planet.new(new_planet_name, new_planet_color, new_planet_mass, new_planet_distance, new_planet_fact)
    add_planet(new_planet)
  end
end