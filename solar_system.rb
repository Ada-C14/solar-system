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
    planets_lists = ""
    @planets.each_with_index do |planet, index|
      planets_lists += "#{(index + 1)}. #{planet.name}\n"
    end
      return "Planets orbiting #{@star_name}: \n#{planets_lists}"
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet.name.downcase == planet_name.downcase
        return planet
      end
    end
    # raise ArgumentError.new("Planet not found.")
  end

  def distance_between(planet_a, planet_b)
    distance_arry = []

    @planets.each do |planet|
      if planet.name.downcase == planet_a.downcase || planet.name.downcase == planet_b.downcase
        distance_arry << planet.distance_from_sun_km
      end
    end

    begin
      return "The distance between #{planet_a} and #{planet_b} is #{(distance_arry[0] - distance_arry[1]).abs} km."
    rescue TypeError, NoMethodError
      print "One of the planets is not found in our system. Returning to main menu..."
    end

  end

  def add_planet_by_user

    info = ["name", "color", "mass in kg", "distance from sun in km", "one fun fact"]

    info.each_with_index do |detail, index|
      print "Please enter the #{detail} of the planet => "
      info[index] = gets.chomp
    end

    new_planet = Planet.new(info[0], info[1], info[2].to_i, info[3].to_i, info[4])

    if info[2].to_i <= 0 || info[3].to_i <= 0
      return "**************************************\nBoth mass_kg and distance_from_sun_km must be numbers that are greater than zero.\nPlanet not added."
    else
      add_planet(new_planet)
      return "Planet added!"
    end

  end
end