require_relative 'planet'

def main
  saturn = Planet.new("Saturn", "yellow-brown", 5.68e26, 1.426e9, "one of Saturn's rings, discovered in 2009, could fit a billion earths." )
  mars = Planet.new("Mars", "red", 6.39e23, 2.066e8, "has the highest mountain in our solar system (24km)." )
  puts saturn.summary
  puts mars.summary
end

main