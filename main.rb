require_relative "Planet"


def main
  # ... do stuff with planets ...
  earth = Planet.new("Earth", "blue/green", 5.972e24, 1.496e8, "Only planet known to support life")
  mars = Planet.new("Mars", "red/orange", 6.39e23, 2.11e8, "Pieces of mars have fallen on earth")

  puts earth.summary
  puts mars.summary

end

main