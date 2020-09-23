require_relative "planet"

def main
  stiletto = Planet.new("Stiletto", "yellow", 2398, 98347, "Resembles the brilliant yellow of a larch tree in Autumn")

  puts "#{stiletto.name} has shown to be a promising new source of beauty in Space."

end

main