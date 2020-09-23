require_relative 'planet'

def main
  jupiter = Planet.new('Jupiter', 'brown', 4.972e24, 1.506e8, 'Only planet known how to be happy in life')
  venus = Planet.new('Venus', 'gray', 2.972e24, 1.126e8, 'Only planet known how to travel around the world')
end


main