require_relative "Planet"

# Method creates two different instances of Planet and prints out some of their attributes.
def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  venus = Planet.new("Venus", "white", 4.867e24, 1.502e8, "Nearly the same size as Earth.")

  puts earth.summary
  puts venus.summary
end

main