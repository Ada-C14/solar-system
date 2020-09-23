class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km =  distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{@name}, is the color #{@color} and has a mass of #{@mass_kg} kilograms. In addition, it is
    #{@distance_from_sun_km} kilometers from the sun. Lastly, it is the  #{@fun_fact}."
  end
end


