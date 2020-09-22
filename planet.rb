class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    # error checking to constructor for variables with integers
    raise ArgumentError.new("Has to be greater than 0") if mass_kg <= 0 || distance_from_sun_km <= 0
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{@name} has the color of #{@color} and a mass of #{@mass_kg}. Its #{@distance_from_sun_km} from the sun and a fun fact about it is #{@fun_fact}"
  end
end

# Q: how to add minitest tests for Planet?