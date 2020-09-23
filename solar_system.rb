class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(planet)
    planets << planet
  end

  def list_planets
    planet_list = "Planets orbiting #{star_name}"
    planets.each_with_index do |planet, index|
      planet_list << "\n#{index + 1}. #{planet.name}"
    end
    return planet_list
  end

  def find_planet_by_name(desired_planet)
    planet_matches = planets.select { |planet| planet.name.upcase == desired_planet.upcase }

    until planet_matches.length > 0
      puts "no such planet as #{desired_planet} in the #{star_name} system\nenter a new planet"
      desired_planet = gets.chomp
      planet_matches = planets.select { |planet| planet.name.upcase == desired_planet.upcase }
    end

    if planet_matches.length == 1
      return planet_matches[0]

    # if more than one planet with the same name
    # reads name and color out to user one at a time
    # asks if that's the one they want
    elsif planet_matches.length > 1
      puts "there is more than one planet named #{desired_planet}"
      planet_matches.each do |planet|
        puts "Do you mean the #{planet.name} that is the color #{planet.color}? (yes/no)"
        answer = gets.chomp.downcase
        return planet if answer == "yes"
      end

      # for cases where multiple planets with same name
      # but user indicates none of the options are the right one
      puts "sorry, those are the only planets named #{desired_planet}"
    end
  end

  def distance_between(planet1, planet2)
    start = find_planet_by_name(planet1)
    terminal = find_planet_by_name(planet2)

    # in case find_planet_by_name returns nil
    return "can't find distance of planets that aren't there!" if start == nil || terminal == nil

    distance = start.distance_from_sun_km - terminal.distance_from_sun_km
    return "#{start.name} and #{terminal.name} are #{distance.abs} kms apart"
  end
end
