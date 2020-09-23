class Planet

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def summary
    return "#{self.name} Details:
    # Color: #{self.color}
    # Mass, Kg: #{self.mass_kg}
    # Distance From Sun, Kg: #{self.distance_from_sun_km}
    # Fun Fact: #{self.fun_fact}"
  end

end

