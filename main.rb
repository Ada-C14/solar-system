require_relative 'planet.rb'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  jupiter = Planet.new('Jupiter', 'orange-yellow', 50.24e34 , 5.496e8, 'Fastest spinning planet in the Solar System')

  puts earth.summary
  puts jupiter.summary
end

main


