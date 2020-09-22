require_relative 'planet.rb'

def main
  jupiter = Planet.new('Jupiter', 'Brown', 999, 5, "Likes to eat black holes",
                       favorite_animal: "Meerkat", pronoun: "Her")

  pluto = Planet.new('Pluto', 'Red', 1, 9, "Forever angry at it's planetary exclusion")
  puts jupiter.summary
  puts pluto.summary

end

main