require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

#wave 1

describe 'Planet' do

  it 'raises ArgumentError if mass_kg is not a number' do

    expect {
      weird_planet = Planet.new("Weird Planet", "Purple", "Ada Lovelace", 20, 'It exist in my dreams')
    }.must_raise ArgumentError

  end

  it 'raises ArgumentError for mass_kg smaller than 0' do

    expect {
      weird_planet = Planet.new("Weird Planet", "Purple", -4, 20, 'It exist in my dreams')
    }.must_raise ArgumentError

  end

  it 'raises ArgumentError if distance_from_sun_km is not a number' do

    expect {
      weird_planet = Planet.new("Weird Planet", "Purple", 800, "Giraffe", 'It exist in my dreams')
    }.must_raise ArgumentError

  end

  it 'raises ArgumentError for distance_from_sun_km smaller than 0' do

    expect {
      weird_planet = Planet.new("Weird Planet", "Purple", 600000, -3, 'It exist in my dreams')
    }.must_raise ArgumentError

  end
end