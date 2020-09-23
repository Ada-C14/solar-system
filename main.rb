require_relative 'lib/planet'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.fun_fact

  pluto = Planet.new('Pluto', 'unknown', 5.972e24, 1.496e8, 'Unknown')
  puts pluto.name
end

main