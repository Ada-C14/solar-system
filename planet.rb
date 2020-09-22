class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "\n   #{@name} is a #{@color} planet!"\
           "\n   #{@name}'s mass is #{@mass_kg} kg."\
           "\n   #{@name} is #{@distance_from_sun_km} km away from the Sun."\
           "\n   Fun fact about #{@name}: #{@fun_fact}"\
  end
end