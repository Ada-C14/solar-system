class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    mass_kg > 0 ? ( @mass_kg = mass_kg ) : ( raise ArgumentError.new("Invalid argument. Planet cannot be of nonpositive mass.") )
    distance_from_sun_km > 0 ? ( @distance_from_sun_km = distance_from_sun_km ) : ( raise ArgumentError.new("Invalid argument. Distance between the Sun and a planet must be a positive metric.") )
    @fun_fact = fun_fact
  end

  def summary
    return "The name of this #{@color} planet is #{@name}. It weighs a whopping #{@mass_kg} kilograms and is #{@distance_from_sun_km} kilometers away from the Sun. Fun fact about #{@name}: #{@fun_fact}."
  end
end