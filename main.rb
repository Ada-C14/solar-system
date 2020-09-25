# main.rb
require_relative 'planet'
require_relative 'solar_system'
require 'colorize'

def alien_picked
  puts "What alien peaked your interest?"
  alien_chosen = gets.chomp
  puts ""
  return alien_chosen
end

# def alien_picked
#   puts "Let's add a new alien! Please provide the following info:"
#   puts "Alien name:"
#   name = gets.chomp
#   puts "Alien color:"
#   color = gets.chomp
#   puts "Alien home, star system or star cluster etc."
#   home = gets.chomp
#   puts "Alien's distance from the sun in light years:"
#   distance = gets.chomp
#   puts "Fun fact about the alien:"
#   fun_fact = gets.chomp
#   puts ""
#
#   new_alien = Alien_Type.new(name, color, home, distance, fun_fact)
#
#   return new_alien
# end

def main
  solar_system = SolarSystem.new('universe')
  zetas = Alien_Type.new('Zetas', 'gray', 5.97324244, 'Reticuli binary star system', 'Zetas are intellectually ahead of us by a few million years or so.')
  felines = Alien_Type.new('The Felines', 'gold, white, but it varies', 88973242, 'Sirius Star System', 'They exist from 3D on up to 12D!')
  pleiadians = Alien_Type.new('Pleiadians', 'similar to human skin tone', 9, 'Pleiades Star Cluster', 'They communicate by means of light transfer.')

  solar_system.add_alien(zetas)
  solar_system.add_alien(felines)
  solar_system.add_alien(pleiadians)

  exit_loop = false

  while(!exit_loop)
    puts "Please select an option from below"
    puts "1. list aliens"
    puts "2. alien details"
    puts "3. add alien"
    puts "4. exit"

    user_input = gets.chomp.upcase

    if user_input == "LIST ALIENS"
      puts solar_system.list_aliens.colorize(:light_blue)
    end

    if user_input == "ALIEN DETAILS"
      search = alien_picked
      found_alien = solar_system.find_alien_by_name(search)
      if (found_alien)
        puts found_alien.summary.colorize(:magenta)
      else
      end
    end

    # if user_input == "ADD ALIEN"
    #   new_alien = alien_picked
    #   solar_system.add_alien(new_alien)
    # end

    if user_input == "EXIT"
      exit_loop = true
    end
  end

  return solar_system
end
main
