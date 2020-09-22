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
    return "\n   #{@name.capitalize} is a #{@color} planet!"\
           "\n   #{@name.capitalize}'s mass is #{@mass_kg} kg."\
           "\n   #{@name.capitalize} is #{@distance_from_sun_km} km away from the Sun."\
           "\n   Fun fact about #{@name.capitalize}: #{@fun_fact}"\
  end
end