# Add minitest tests for Planet (W1.6)
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative 'lib/planet'
require_relative 'lib/solar_system'


# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Solar System' do

  describe 'Add Planet' do
    #Arrange

    end
  end

  describe 'Summary' do
    #Arrange

    # Act
    it 'Print in the summary a planet name' do
      @name = name
      expect(@name).must_equal 'Earth'
    end
    it 'Print in the summary a planet color' do
      @color = color
      expect(@color).must_equal 'blue'
    end
    it 'Print in the summary a planet mass kg' do
      @mass_kg = mass_kg
      expect(@mass_kg).must_equal 5.972e24
    end
    it 'Print in the summary a planet distance from sun' do
      @distance_from_sun_km = distance_from_sun_km
      expect(@distance_from_sun_km).must_equal 149.6
    end
    it 'Print in the summary a planet fun fact' do
      @fun_fact = fun_fact
      expect(@fun_fact).must_equal 'Is the only planet known to support life!'
    end
  end


