require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/spec'

# Project file path goes here
require_relative '../lib/planet.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "planet" do
  it "raise an error when mass is not a number or negative" do
    expect{
      Planet.new('Earth', 'blue-green', "me", 1.496e8, 'Only planet known to support life')
    }.must_raise ArgumentError

    expect{
      Planet.new('Earth', 'blue-green', -3, 1.496e8, 'Only planet known to support life')
    }.must_raise ArgumentError
  end

  it "raise an error when distance from sun is not a number or negative" do
    expect{
      Planet.new('Earth', 'blue-green', 1, -3, 'Only planet known to support life')
    }.must_raise ArgumentError

    expect{
      Planet.new('Earth', 'blue-green', 1, "me", 'Only planet known to support life')
    }.must_raise ArgumentError
  end
end