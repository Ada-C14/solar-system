require_relative 'planet'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new("Mars", "red", 6.39e23, 1.307e8, "where The Martian took place")
  puts earth.summary
  puts mars.summary

end

main