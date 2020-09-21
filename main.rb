require_relative 'planet.rb'
# venus= Planet.new('Venus', 'gold', 4.867e24, 1.078e8, 'Similar in size and structure to Earth, Venus has been called Earth\'s twin.')
# mars= Planet.new('Mars', 'red-brown', 6.417e23, 2.092e8, 'It has an even more active past.')

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')
  mercury = Planet.new('Mercury', 'blue', 3.301e23, 6.966e7, 'the smallest planet in our solar system and nearest to the Sun')
  puts earth.summary
  puts mercury.summary
end


main
