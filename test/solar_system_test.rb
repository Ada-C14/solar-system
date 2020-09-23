require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet'
require_relative '../lib/solar_system'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'tests for solar_system class' do
  it 'has the distance between two planets' do
    # Arrange 
    first_planet = Planet.new('Tiny planet', 'pale pink', 1, 10_000, 'Pale pink color is becuase of cherry blossom')
    second_planet = Planet.new('Huge planet', 'green and blue', 100_000_000, 100_000, 'The biggest volumn of planet')

    # Act
    space_system = SolarSystem.new("Sol")
    space_system.add_planet(first_planet)
    space_system.add_planet(second_planet)
    distance_between_them = space_system.distance_between(first_planet.name, second_planet.name)

    # Assert 
    expect(distance_between_them).must_equal 90_000
  end
end