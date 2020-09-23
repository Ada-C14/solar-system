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
    planet_info = "#{@name} is a #{@color} planet, approximately #{@distance_from_sun_km}" \
      " km from the sun, with a mass of about #{@mass_kg} kg. \n#{@fun_fact}"
    return planet_info
  end
end

