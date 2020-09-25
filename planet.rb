# frozen_string_literal: true

class Planet
  attr_reader(:name, :color, :mass_kg, :distance_from_sun_km, :fun_fact)

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    raise ArgumentError, 'Planet mass cannot be less than 0'    if mass_kg <= 0

    @distance_from_sun_km = distance_from_sun_km
    raise ArgumentError, 'Planet distance from sun cannot be less than 0' if distance_from_sun_km <= 0

    @fun_fact = fun_fact
  end

  def summary
    "The planet #{name} is the color #{color}. It has a mass of #{mass_kg} kg. It is #{distance_from_sun_km} km away from the sun. #{fun_fact}.\n\n"
  end
end
