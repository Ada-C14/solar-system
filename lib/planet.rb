class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    raise ArgumentError, "mass and distance have to be numbers and greater than 0" if mass_kg <= 0 || distance_from_sun_km <= 0
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{name} has a #{color} color. Its mass is #{mass_kg} kg and its #{distance_from_sun_km} km away from the sun. Here's a fun fact: #{fun_fact}."
  end


end