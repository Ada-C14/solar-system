#wave 2
class SolarSystem

  attr_reader :planets, :star_name
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end
  def list_planets
    result = "Planets orbiting #{star_name} \n"
    @planets.each_with_index do |planet, index|
      result +=  "#{index + 1}. #{planet.name} \n"
    end
    return result
  end
  #wave 2
  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet.name.upcase == planet_name.upcase
        return planet
      end
    end
    return nil
  end
  #wave 3
  def add_a_new_planet()
      puts "What is the planet's name?"
      name = gets.chomp
      puts "What is the color of this planet?"
      color = gets.chomp
      puts "Mass?"
      mass_kg = gets.chomp
      puts "Distance from the sun?"
      distance_from_sun_km = gets.chomp
      puts "Fun fact?"
      fun_fact = gets.chomp
      new_planet_instance = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      @planets << new_planet_instance
      puts new_planet_instance.summary
      #puts @planets.inspect
  end
end


