require_relative 'planet'

def main
  earth = Planet.new(
      'Earth',
      'blue-green',
      5.972e+24,
      149.6e+6,
      "Only planet known to support life"
  )

  moon = Planet.new(
      'Moon',
      'grey',
      7.348e+22,
      150e+6,
      "Earth's only natural satellite"
  )

  p "Here's a fun fact about the #{earth.name}: #{earth.fun_fact}"
  p "Here's a fun fact about the #{moon.name}: #{moon.fun_fact}"

end

main