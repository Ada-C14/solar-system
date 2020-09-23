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

  def planet_details_helper
    print "Which planet would you like to learn about? "
    puts
    found_planet = gets.chomp
    planet_details = find_planet_by_name(found_planet)
    return planet_details.summary
  end

  def find_planet_by_name(planet)
    planet_details = @planets.find { |instance| instance.name == planet.capitalize }
    return planet_details
  end

  def get_users_planet
    print "What's the planet called? "
    user_planet_name = gets.chomp.capitalize

    print "What color is it? "
    color = gets.chomp

    print "What is it's mass in kg? "
    mass_kg = gets.chomp

    print "What is it's distnace from the sun in km? "
    distance_from_sun_mil_km = gets.chomp

    print "Fun fact? "
    fun_fact = gets.chomp

    users_planet = Planet.new(user_planet_name, color, mass_kg, distance_from_sun_mil_km, fun_fact)

    add_planet(users_planet)
    return users_planet.summary
  end
end


