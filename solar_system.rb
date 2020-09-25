class SolarSystem
  attr_reader :star_name, :alien_types
  def initialize(star_name)
    @star_name = star_name
    @alien_types = []
  end

  def add_alien(alien)
    @alien_types.push(alien)
  end

  def find_alien_by_name(search)
    # Note: We can use planets, @planets, or self.planets
    found_alien = @alien_types.find do |alien|
      alien.name.upcase == search.upcase
    end
    return found_alien
  end

  def list_aliens
    puts
    alien_list = "Alien races living in the #{@star_name}"
    # Note: We can use planets, @planets, or self.planets
    @alien_types.each_with_index do |alien, index|
      alien_list+= "\n #{index+1}: #{alien.name}"
    end
    return alien_list
  end
end

