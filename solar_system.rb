class Solar_system
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(instance_of_planet)
    @planets << instance_of_planet
  end

  def list_planets
    new_array = @planets.map.with_index do |planet, i|
      " #{i+1}. #{planet.name}"
    end

    return "Planets orbiting #{@star_name}:\n#{new_array.join("\n")}"
  end

  def find_planet_by_name(name_of_planet)

    index_of_desired_instance = @planets.find_index {|instance_of_planet| instance_of_planet.name.downcase == name_of_planet.downcase}

    if index_of_desired_instance != nil
      return  @planets[index_of_desired_instance]
    else
      return "#{name_of_planet.capitalize} is not currently an instance of the Class."
    end
  end

end