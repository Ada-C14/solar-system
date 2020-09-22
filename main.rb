require_relative 'planet'

def main
  # this method should create two different instances of Planet and print out some of their attributes  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts "#{ earth.name } is #{ earth.color }"
  puts earth.summary  

  mars = Planet.new('Mars', 'red', 6.39e23, 14.16e8, 'The second-smallest planet in the solar system')  
  puts "#{ mars.name } is #{ mars.color }"
  puts mars.summary  
end

main