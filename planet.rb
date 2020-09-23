class Planet
  attr_reader :name

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "The planet #{@name} has a color #{@color} with the weight of #{@mass_kg} mass_kg. " \
           "The distance from the sun is #{@distance_from_sun_km} km. Its one fun fact is '#{@fun_fact}.'"
  end

  def to_s
    return "#{@name}"
  end

end

