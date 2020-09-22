# Pauline Chane (@PaulineChane)
# Ada Developers Academy C14
# Solar System Assignment - main.rb Main Class
# 09/23/2020

# main.rb
require_relative 'planet'

def main
  # Load Planet into pry:
  # $ pry -r ./planet.rb
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  puts earth.name
  # => Earth
  puts earth.fun_fact
  # => Only planet known to support life
  puts earth.summary

  fakeplanet1 = Planet.new('Earth', 'blue-green', 5.972e24, -1, 'Only planet known to support life')

end

main