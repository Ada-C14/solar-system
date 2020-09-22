
require relative 'planet'

def main

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'the only planet known to support life')
  venus = Planet.new("Venus", 'white', 4.867 * 10^24, 107.86 * 1000000000, 'a day on Venus is longer than a year' )

  puts earth.summary
  puts venus.summary

end

# add minitest!!!