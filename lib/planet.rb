# Christabel Sebastian
# Last updated, Sept 20. 2020
# Ada C14
# Solar System program: Planet class

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(hash)
    @name = hash[:name].split(' ').map(&:capitalize).join(' ')
    @color = hash[:color]
    @mass_kg = natural_num?(hash[:mass_kg])
    @distance_from_sun_km = natural_num?(hash[:distance_from_sun_km])
    @fun_fact = hash[:fun_fact]
  end

  def summary
    return "The planet #{@name} is a lovely #{@color.to_s} color and weighs #{@mass_kg} kilograms. #{@name} is #{@distance_from_sun_km} kilometers from the sun and fun fact: #{@fun_fact}"
  end

  def natural_num?(num)
    raise ArgumentError, "Cannot have a negative mass or negative distance." if num <= 0
    return num.to_f
  end

end