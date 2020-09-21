require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/main'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Solar Systems program" do
  describe "Planets class" do
    it "initialization returns correct data type" do
      #Arrange

    end

  end
end