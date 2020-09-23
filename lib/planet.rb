class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

    #raise error for negative mass and distance from sun
    raise ArgumentError, 'Invalid mass' if mass_kg <= 0
    raise ArgumentError, 'Invalid distance' if distance_from_sun_km <= 0
  end

  def summary
    return "#{@name} is a #{@color} planet with a mass of #{@mass_kg}kg and a distance \nof #{@distance_from_sun_km}km from the sun. #{@fun_fact}"
  end
end