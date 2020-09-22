class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    #raise ArgumentError "not a valid planet name" if !name.is_a?(String)
    @name = name
    @color = color
    raise ArgumentError,new("Not a valid mass") if mass_kg <= 0
    @mass_kg = mass_kg
    raise ArgumentError,new("Not a valid mass") if distance_from_sun_km <= 0
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{@name} is #{@color} with #{@mass_kg} mass and #{@distance_from_sun_km} km from the sun.  Here's a fun fact: #{@fun_fact}"
  end

end