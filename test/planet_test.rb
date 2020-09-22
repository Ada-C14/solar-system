require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/main'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'planet main' do
  it 'raise argument error if mass_kg is less than 0' do
    expect {
      Planet.new("name", "color", 0, 2343, "fun fact!")
    }.must_raise ArgumentError
  end

  it 'raise argument error if distance_from_sun_km is less than 0' do
    expect {
      Planet.new("name", "color", 23323435, 0, "fun fact!")
    }.must_raise ArgumentError
  end

  it 'raise argument error if both mass_kg and distance_from_sun_km is less than 0' do
    expect {
      Planet.new("name", "color", 0, -20, "fun fact!")
    }.must_raise ArgumentError
  end
end