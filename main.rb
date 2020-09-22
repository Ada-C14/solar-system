require_relative 'lib/planet'
require_relative 'lib/solar_system'

# Crete method main (W1.3)
def main

end

main

# Create an instance add all Planets and print the list (W2.4)
def solar_system_list

  # Instantiate Solar System
  solar_system = SolarSystem.new('Sol')

  # Instantiate Planet
  mercury = Planet.new('Mercury','dark grey',3.30e23, 57.9, 'Is hot, but not too hot for ice')
  solar_system.add_planet(mercury)

  mars = Planet.new('Mars','pale yellow', 6.42e23, 227.9,'Had a thicker atmosphere in the past')
  solar_system.add_planet(mars)

  venus = Planet.new('Venus','pale yellow', 4.87e24, 108.2,'A day on Venus is longer than a year')
  solar_system.add_planet(venus)

  earth = Planet.new('Earth','blue',5.97e24, 149.6, 'Is the only planet known to support life!')
  solar_system.add_planet(earth)

  uranus = Planet.new('Uranus', 'pale blue',8.68e25, 2,871, 'Is more stormy than we thought')
  solar_system.add_planet(uranus)

  neptune = Planet.new('Neptune', 'pale blue', 1.02e26, 4,497.1, 'Has supersonic winds')
  solar_system.add_planet(neptune)

  saturn = Planet.new('Saturn', 'gold',5.68e26, 1,427.0, 'Is a great comet catcher')
  solar_system.add_planet(saturn)

  jupiter = Planet.new('Jupiter', 'orange', 1.90e27, 778.3, 'No one knows how old Saturn’s rings are')
  solar_system.add_planet(jupiter)

  # Add instances of planets to sol instance of solar system
  solar_system.add_planet(mercury)
  solar_system.add_planet(main)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)
  solar_system.add_planet(saturn)
  solar_system.add_planet(jupiter)
  return solar_system
end


