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
    planet_details = @planets.find { |instance| instance.name == planet.capitalize }
    return planet_details
    # return planet.summary
  end

  def users_planet
    print "What's it called? "
    user_planet_name = gets.chomp

    print "What color is it? "
    color = gets.chomp

    print "What is it's mass in kg? "
    mass_kg = gets.chomp

    print "What is it's distnace from the sun in km? "
    distance_from_sun_km = gets.chomp

    print "Fun fact? "
    fun_fact = gets.chomp

    user_planet = Planet.new(user_planet_name, color, mass_kg, distance_from_sun_km, fun_fact)

    add_planet(user_planet)
    return user_planet.summary

    # add_planet(user_planet)

    # puts @planets
    # planet_details = find_planet_by_name(user_planet_name)
    # return planet_details

  end


end


