require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet'
require_relative '../lib/solar_system'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'checking solar system planets' do
  # Arrange
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
  solar_system = SolarSystem.new('Sun')

  solar_system.add_planet(earth)
  solar_system.add_planet(moon)

  it 'raises an ArgumentError for invalid planets in solar system' do
    expect {
      solar_system.check_valid_planet('not a real planet')
    }.must_raise ArgumentError
  end

  it 'raises an ArgumentError for invalid planets in solar system' do
    expect {
      solar_system.check_valid_planet('')
    }.must_raise ArgumentError
  end
end