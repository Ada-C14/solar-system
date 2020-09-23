class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun, :fun_fact

  def initialize (name, color, mass_kg, distance_from_sun, fun_fact)
    @name = name.capitalize
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun = distance_from_sun
    @fun_fact = fun_fact
  end

  def summary
    return "Planet #{@name} is the color #{@color}. It's mass is #{@mass_kg} kg and it's distance from the sun is #{@distance_from_sun}. Fun fact => #{@fun_fact}!"
  end

end
