class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  # Add an instance method to `Planet` called `summary`. This method should _return_ (not `puts`) a string containing a nicely-formatted description of the planet. Exercise your `summary` method in the `main` method.
  def summary
    return "Welcome to planet #{name} - #{distance_from_sun_km}km from the sun. We spin a #{color} mass of #{mass_kg}. Did you know, #{name} is [the] #{fun_fact}!"
  end
end