# spec/string_calculator_spec.rb

#    Go up one level, outside of spec/
#                 |
require_relative("../lib/string_calculator.rb")


RSpec.describe StringCalculator do

  describe "add method" do

    it "returns the addition of 2 numbers in a string" do
      # Setup
      the_calculator = StringCalculator.new

        #   p the_calculator.add("7,7")    ==    14
      expect( the_calculator.add("7,7") ).to eq( 14 )

        #   p the_calculator.add("8,4")    ==    12
      expect( the_calculator.add("8,4") ).to eq( 12 )
    end

    it "returns the number" do
      the_calculator = StringCalculator.new

      expect( the_calculator.add("6") ).to eq( 6 )

      expect( the_calculator.add("3") ).to eq( 3 )

    end

    it "returns 0 if no numbers given" do
      the_calculator = StringCalculator.new

      expect( the_calculator.add ("") ).to eq( 0 )

    end

  end

end