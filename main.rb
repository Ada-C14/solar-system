require_relative "planet"

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.summary
  jupiter = Planet.new('jupiter', 'pink-ish', 7.972e24, 3.496e8, 'Rings man')
  puts jupiter.summary
end

main