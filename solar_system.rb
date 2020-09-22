class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    planet_list = "Planets orbiting #{@star_name}\n"
    @planets.each do |planet|
      planet_list << "#{@planets.index(planet) + 1}. #{planet.name}\n"
    end
    return planet_list
  end

  def find_planet_by_name(desired_planet)
    planet_matches = []
    @planets.each do |planet|
      if planet.name.upcase == desired_planet.upcase
        planet_matches << planet
      end
    end
    if planet_matches.length <= 0
      return "no such planet as #{desired_planet} in the #{@star_name} system"
    elsif planet_matches.length == 1
      return planet_matches[0]
    # if more than one planet with the same name
    # reads name and color out to user one at a time and asks if that's the one they want
    elsif planet_matches.length > 1
      puts "there is more than one planet named #{desired_planet}"
      planet_matches.each do |planet|
        puts "Do you mean the #{planet.name} that is the color #{planet.color}? (yes/no)"
        answer = gets.chomp.downcase
        if answer == "yes"
          return planet
        end
      end
    end
  end

  def distance_between(planet1, planet2)
    distances = []
    @planets.each do |planet|
      if planet.name == planet1 || planet.name == planet2
        distances << planet.distance_from_sun_km
      end
    end
    if distances.length < 2
      return "it looks like you've misplaced a planet"
    end
    distance = distances[0] - distances[1]
    return "#{planet1} and #{planet2} are #{distance.abs} kms apart"
  end
end
