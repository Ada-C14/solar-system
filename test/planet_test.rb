require 'minitest'
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'

# Project file path goes here
require_relative '../lib/planet.rb'
require_relative '../lib/solar_system'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# Tests go here
describe 'Creation and usage of Planet class' do
  before do
    @jupiter = Planet.new('Jupiter', 'Brown', 999, 5, "Likes to eat black holes",
                         favorite_animal: "Meerkat", pronoun: "Her")
    @pluto = Planet.new('Pluto', 'Red', 1, 9, "Forever angry at it's planetary exclusion")
  end

  it "Can be initialized with various argument configurations" do
    expect(@jupiter.favorite_animal).must_equal "Meerkat"
    expect(@pluto.favorite_animal).must_equal "Cat"
  end

  it "Cannot be written to" do
    expect { @jupiter.name = "Woopiter" }.must_raise NoMethodError
  end

  it "Cannot have a mass or distance less than 0" do
    expect { Planet.new('Pluto', 'Yellow', 0, 5, "N/A") }.must_raise ArgumentError
    expect { Planet.new('Sun', 'Yellow', 5, -2, 'N/A') }.must_raise ArgumentError
  end

  it "Handles bad input" do
    expect { Planet.new('Pluto', 'Yellow', 'String', 3, "N/A")}.must_raise ArgumentError
    expect { Planet.new('Pluto', 'Yellow', 3, 'String', "N/A")}.must_raise ArgumentError
  end

end

describe 'Creation and usage of SolarSystem class' do
  before do
    @solar = SolarSystem.new("Sun")
    @jupiter = Planet.new('Jupiter', 'Brown', 999, 5, "Likes to eat black holes",
                         favorite_animal: "Meerkat", pronoun: "Her")
    @pluto = Planet.new('Pluto', 'Red', 1, 9, "Forever angry at it's planetary exclusion")
  end

  it 'Can be initialized and read with proper input' do
    expect(@solar.star_name).must_equal "Sun"
    expect(@solar.planets).must_equal []
  end

  it 'Can have planets added to it and find them by name' do
    @solar.add_planet(@jupiter)
    @solar.add_planet(@pluto)
    expect(@solar.planets[0]).must_equal @jupiter
    expect(@solar.planets[1]).must_equal @pluto
    expect(@solar.find_planet_by_name("jUpIter")[0]).must_equal @jupiter
    expect(@solar.find_planet_by_name("PLUTO")[0]).must_equal @pluto
  end

  it 'Can calculate distance between planets' do
    expect(@solar.distance_between(@pluto, @jupiter)).must_equal 4
  end

  it 'Can handle bad input' do
    expect { SolarSystem.new(3) }.must_raise ArgumentError
    expect { SolarSystem.new("\n")}.must_raise ArgumentError
    expect { @solar.add_planet('toaster')}.must_raise ArgumentError
    expect { @solar.distance_between(3, 5)}.must_raise ArgumentError
  end
end