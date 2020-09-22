require_relative 'planet'

class SolarSystem
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    raise ArgumentError.new("Planet name is empty!") if star_name = ''
    @star_name = star_name
    @planets = []
  end
end