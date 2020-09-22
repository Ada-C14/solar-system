class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    if mass_kg <= 0 || distance_from_sun_km <= 0
      raise ArgumentError, "Number must be greater than 0."
    end
    @fun_fact = fun_fact
  end

  def summary
    return "#{self.name} is a #{self.color} planet with a mass of #{self.mass_kg}kg. It is #{self.distance_from_sun_km}km from the sun. Fun fact: #{self.fun_fact}"
  end
end