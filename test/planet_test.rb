require 'minitest'
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'

# Project file path goes here
require_relative '../lib/planet.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# Tests go here
describe 'Creation and usage of Planet class' do
  jupiter = Planet.new('Jupiter', 'Brown', 999, 5, "Likes to eat black holes",
                       favorite_animal: "Meerkat", pronoun: "Her")
  pluto = Planet.new('Pluto', 'Red', 1, 9, "Forever angry at it's planetary exclusion")

  it "Can be initialized with various argument configurations" do
    expect(jupiter.favorite_animal).must_equal "Meerkat"
    expect(pluto.favorite_animal).must_equal "Cat"
  end

  it "Cannot be written to" do
    expect { jupiter.name = "Woopiter" }.must_raise NoMethodError
  end

  it "Cannot have a mass or distance less than 0" do
    expect { Planet.new('Pluto', 'Yellow', 0, 5, "N/A") }.must_raise ArgumentError
    expect { Planet.new('Sun', 'Yellow', 5, -2, 'N/A') }.must_raise ArgumentError
  end

end
