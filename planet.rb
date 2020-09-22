require 'pry'

class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)

    if mass_kg < 0
      raise ArgumentError, "Invalid mass #{mass_kg} kg"
    end

    if distance_from_sun_km < 0
      raise ArgumentError, "Invalid distance #{distance_from_sun_km} km"
    end

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

  end

  attr_reader :name
  attr_reader :color
  attr_reader :mass_kg
  attr_reader :distance_from_sun_km
  attr_reader :fun_fact

  def summary
    summary = "#{@name} is a #{@color} planet. It has a mass of #{@mass_kg} kg and is #{@distance_from_sun_km} km from the sun. Fun fact: #{@fun_fact}"
  end


end