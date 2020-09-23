require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'checking solar system planets' do
  it 'raises an ArgumentError for invalid planets in solar system' do
    expect {
      check_valid_planet('not a real planet')
    }.must_raise ArgumentError
  end

  it 'raises an ArgumentError for invalid planets in solar system' do
    expect {
      check_valid_planet('')
    }.must_raise ArgumentError
  end
end