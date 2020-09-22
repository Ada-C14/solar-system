# Pauline Chane (@PaulineChane)
# Ada Developers Academy C14
# Solar System Assignment - solar_system.rb Solar System Class
# 09/23/2020

# Solar System class object
class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
end