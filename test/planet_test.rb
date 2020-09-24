require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'tests for planet class' do
  it 'mass_kg and distance_from_sun_km are both a number greater than zero' do
    # Arrange && Act
    tiny_planet = Planet.new('Tiny planet', 'pale pink', 1, 10000, 'Pale pink color is becuase of cherry blossom')

    # Assert 
    expect(tiny_planet.mass_kg).must_equal 1
    expect(tiny_planet.distance_from_sun_km).must_equal 10000

    tiny_planet2 = Planet.new('Tiny planet', 'pale pink', "4", 10000, 'Pale pink color is becuase of cherry blossom')
    expect(tiny_planet2.mass_kg.to_f).must_equal 4.0

    tiny_planet3 = Planet.new('Tiny planet', 'pale pink', 1, "40000", 'Pale pink color is becuase of cherry blossom')
    expect(tiny_planet3.distance_from_sun_km.to_f).must_equal 40000.0


  end

  it 'raises an ArgumentError for mass_kg is not a number greater than 0' do

    expect {Planet.new('Tiny planet', 'pale pink', 'super tiny planet', 10000, 'Pale pink color is becuase of cherry blossom')}.must_raise ArgumentError

    expect {Planet.new('Tiny planet', 'pale pink', -100, 10000, 'Pale pink color is becuase of cherry blossom')}.must_raise ArgumentError

    expect {Planet.new('Tiny planet', 'pale pink', '', 10000, 'Pale pink color is becuase of cherry blossom')}.must_raise ArgumentError
  end

  it 'raises an ArgumentError for distance_from_sun_km is not a number greater than 0' do

    expect {Planet.new('Tiny planet', 'pale pink', 1, 'not so far away', 'Pale pink color is becuase of cherry blossom')}.must_raise ArgumentError

    expect {Planet.new('Tiny planet', 'pale pink', 1, 0, 'Pale pink color is becuase of cherry blossom')}.must_raise ArgumentError

    expect {Planet.new('Tiny planet', 'pale pink', 1, nil, 'Pale pink color is becuase of cherry blossom')}.must_raise ArgumentError
  end
end