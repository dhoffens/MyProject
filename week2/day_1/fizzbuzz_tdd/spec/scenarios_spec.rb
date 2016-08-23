# fizzbuzz spec

require_relative("../lib/scenarios.rb")


RSpec.describe Scenario do

  describe "fizzbuzz" do

    it "returns fizz if input is divisible by 3" do
      var = Scenario.new

      expect( var.fizzbuzz(3) ).to eq( "fizz" )
      expect( var.fizzbuzz(9) ).to eq( "fizz" )
      expect( var.fizzbuzz(21) ).to eq( "fizz" )

    end

    it "returns buzz if input is divisible by 5" do
     var = Scenario.new

      expect( var.fizzbuzz(5) ).to eq( "buzz" )
      expect( var.fizzbuzz(20) ).to eq( "buzz" )
      expect( var.fizzbuzz(25) ).to eq( "buzz" )

    end

    it "returns fizzbuzz if input is divisible by 3 or 5" do
      var = Scenario.new

      expect( var.fizzbuzz(15) ).to eq( "fizzbuzz" )
      expect( var.fizzbuzz(45) ).to eq( "fizzbuzz" )
      expect( var.fizzbuzz(75) ).to eq( "fizzbuzz" )

    end

    it "returns the number if input isn't divisible by 3, 5 or 15" do
      var = Scenario.new

      expect( var.fizzbuzz(4) ).to eq( 4 )
      expect( var.fizzbuzz(16) ).to eq( 16 )
      expect( var.fizzbuzz(29) ).to eq( 29 )

    end


  end

end