class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    raise ArgumentError.new("mass has to be a number and greater than 0") if !valid_number?(mass_kg)
    @distance_from_sun_km = distance_from_sun_km
    raise ArgumentError.new("distance from the sun has to be a number and greater than 0") if !valid_number?(distance_from_sun_km)
    @fun_fact = fun_fact
  end

  def summary
    return "Planet: #{name} \n1. Color: #{color} \n2. Mass (kg): #{mass_kg} \n3. Distance from sun (km): #{distance_from_sun_km} \n4. Fun fact: #{fun_fact}"
  end

  def valid_number?(user_input)
    valid = true
    # not valid if not a number
    unless user_input.to_s.match(/(\d*\.)?\d+$/)
      valid = false
    end
    # not valid if less than 0
    valid = false if user_input.to_i < 0
    return valid
  end
  
end