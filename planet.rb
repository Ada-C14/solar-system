
class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

  end

  def summary
    if @mass_kg.to_i <= 0 || @distance_from_sun_km.to_i <= 0
      raise ArgumentError.new("#{@name}: Both mass_kg and distance_from_sun_km must be numbers that are greater than zero.")
    end

    return "The planet #{@name} has a color #{@color}, a mass of #{@mass_kg}, a distance from the sum in km of #{@distance_from_sun_km} and has a fun fact of #{@fun_fact}."
  end

end
