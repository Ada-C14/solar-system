require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Correct initialize' do

  it 'raises an ArgumentError for invalid measurement inputs' do
    expect {
      Planet.new(
          'Earth',
          'blue-green',
          'very big',
          149.6e+6,
          "Only planet known to support life"
      )
    }.must_raise ArgumentError

    expect {
      Planet.new(
          'Earth',
          'blue-green',
          5.972e+24,
          'very far',
          "Only planet known to support life"
      )
    }.must_raise ArgumentError

    expect {
      Planet.new(
          'Earth',
          'blue-green',
          '',
          'very far',
          "Only planet known to support life"
      )
    }.must_raise ArgumentError
  end

  it 'raises an ArgumentError for measurement inputs <= 0' do
    expect {
      Planet.new(
          'Earth',
          'blue-green',
          5.972e+24,
          -149.6e+6,
          "Only planet known to support life"
      )
    }.must_raise ArgumentError

    expect {
      Planet.new(
          'Earth',
          'blue-green',
          -5.972e+24,
          'very far',
          "Only planet known to support life"
      )
    }.must_raise ArgumentError

    expect {
      Planet.new(
          'Earth',
          'blue-green',
          0,
          900,
          "Only planet known to support life"
      )
    }.must_raise ArgumentError
  end
end