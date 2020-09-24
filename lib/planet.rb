class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

    if mass_kg <= 0
      raise ArgumentError.new("Mass must be greater than 0 kg.")
    end

    if distance_from_sun_km <= 0
      raise ArgumentError.new("Distance from the sun must be greater than 0 km.")
    end
  end

  def summary
    return "#{@name} is #{@color}, weighs #{@mass_kg} kg, and is #{@distance_from_sun_km} km from the sun. A fun fact is that #{@fun_fact}"
  end
end