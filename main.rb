require_relative "planet"

def main
  mars = Planet.new("Mars", "red", "6.39 × 10^23", "210.58 million", "we might have to figure out how to live there if corporations keep ruining earth")
  puts mars.summary
  venus = Planet.new("Venus", "yellowish white", "4.867 × 10^24", "107.85 million", "doesn't have any moons :( ")
  puts venus.summary
end


main