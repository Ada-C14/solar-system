# Christabel Sebastian
# Last updated, Sept 20. 2020
# Ada C14
# Solar System program: Planet class

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(hash)
    raise ArgumentError, "Need planet name." if (!hash[:name].to_s.strip || hash[:name].to_s.strip.empty?)

    @name = hash[:name].split(' ').map(&:capitalize).join(' ')
    @color = symbol?(hash[:color])
    @mass_kg = positive_real_num?(hash[:mass_kg])
    @distance_from_sun_km = positive_real_num?(hash[:distance_from_sun_km])
    @fun_fact = hash[:fun_fact] ? hash[:fun_fact] : "TBD"
  end

  def summary
    return "The planet #{@name} is a lovely #{@color.to_s} color and weighs #{@mass_kg} kilograms. #{@name} is #{@distance_from_sun_km} kilometers from the sun and fun fact: #{@fun_fact}"
  end

  def positive_real_num?(num)
    raise  ArgumentError, "Each planet must have a mass (kg) and distance from sun (km)." if !num
    raise ArgumentError, "Cannot have a negative mass or negative distance." if num.to_f < 0
    raise ArgumentError, "Please enter a number." if (num.to_f == 0 && !num.match(/[0]+[.]?[0]*/))
    return num.to_f
  end

  def symbol?(input)
    if (!input || input == "")
      return :unknown
    elsif input.class == Symbol
      return input.downcase
    else
      return input.downcase.to_sym
    end
  end

end