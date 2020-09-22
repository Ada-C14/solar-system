require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

# require_relative '../lib/main'
require_relative '../lib/planet'
require_relative '../lib/solar_system'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

#Unsure of syntax for Main -- the below have not been implemented
xdescribe "Solar Systems program" do
  it "check for ArgumentError if user enters non numerical selection or a number not available to select" do
    # Arrange && Act && Assert
    expect {
      main
      "A"
    }.must_raise ArgumentError
  end

end