require_relative 'planet'
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
    planet_list = "Planets Orbiting #{@star_name}:\n"
    @planets.each_with_index do |planet, index|
      planet_list << "#{index + 1}. #{planet.name}\n"
    end
    return planet_list
  end

  def find_planet_by_name(string)
    @planets.each do |planet|
      if planet.name.downcase == string.downcase
        return planet
      end
    end
  end

  def get_details
    print "What is the name of the planet you wish to learn about? "
    planet = gets.chomp.downcase
    found_planet = find_planet_by_name(planet)
    if found_planet
      puts found_planet.summary
    else
      puts "I couldn't find a planet by the name #{planet}.\n\n"
    end
  end

  def add_planet_by_user
    puts "To add a new planet. Please provide the following info:"
    puts "Planet name:"
    name = gets.chomp
    puts "Planet color:"
    color = gets.chomp
    puts "Planet's mass in kilograms:"
    mass = gets.chomp
    puts "Planet's distance from in the sun in kilometers:"
    distance = gets.chomp
    puts "Fun fact about planet:"
    fun_fact = gets.chomp
    puts ""

    new_planet = Planet.new(name, color, mass, distance, fun_fact)

    return new_planet
  end

end
