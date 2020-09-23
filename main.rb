require_relative 'planet'

def main
  tatooine = Planet.new('Tatooine', 'orange-ish', 6.34e48, 1.29e13, 'has two moons')
  pluto = Planet.new('Pluto', 'purple', 10, 2.8e293, 'counts as a planet in some books')

  puts "#{tatooine.name} is #{tatooine.color} and #{tatooine.fun_fact}."
  puts "#{pluto.name} has a mass of #{pluto.mass_kg} kgs and #{pluto.fun_fact}."
  puts "#{tatooine.summary}"
end

main