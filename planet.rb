class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def mass_kg=(mass_kg)
      raise ArgumentError, 'Mass must be greater than 0.' if mass_kg < 0
  end

  def distance_from_sun_km=(distance_from_sun_km)
    if distance_from_sun_km < 0
      raise ArgumentError.new('Distance from sun must be greater than 0.')
    end
  end

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    self.mass_kg = mass_kg
    self.distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    " Name: #{@name}\n Color: #{@color}\n Mass: #{mass_kg}\n Distance from the Sun: #{distance_from_sun_km}\n Fun Fact: #{@fun_fact}"
  end






end

