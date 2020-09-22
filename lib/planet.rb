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
    return "Planet Name: #{@name}\n Color: #{@color}\n Mass: #{@mass_kg}kg\n Distance from the Sun:#{@distance_from_sun_km}kg \nFun fact: #{@fun_fact}."
  end
end