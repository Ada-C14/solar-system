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
    if @mass_kg.to_i <= 0 || @distance_from_sun_km.to_i <= 0
      raise ArgumentError.new("#{@name}: Both mass_kg and distance_from_sun_km must be numbers that are greater than zero.")
    end

    return "#{@name}'s color is #{@color}. It's mass is #{@mass_kg} kg and it's distance from sun is #{@distance_from_sun_km.to_i} km. One fun fact is that it #{@fun_fact}."
  end
end