class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact, :summary

  # attr_accessor :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  # summary = "#{name} is a #{color} colored planet. Its mass is #{mass_kg}kg, its distance from the sun is #{distance_from_sun_km}km and its the #{fun_fact}."

  def initialize(name, color, mass_kg,distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary()
    return "#{@name} is a #{@color} colored planet. Its mass is #{@mass_kg}kg, its distance from the sun is #{@distance_from_sun_km}km and its the #{@fun_fact}."
  end
  end