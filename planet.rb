class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    if mass_kg <= 0
      raise ArgumentError.new("Mass must be greater than 0 kg")
    end

    if distance_from_sun_km <= 0
      raise ArgumentError.new("That is too close to the sun. Distance must be greater than 0 km")
    end

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def summary
    return "#{@name} is a #{@color} planet that is #{@mass_kg} kg and #{@distance_from_sun_km} km from the sun. #{@fun_fact}!"
  end
end