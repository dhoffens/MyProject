# spec/password_checker_spec.rb

require_relative("../lib/password_checker.rb")

RSpec.describe PasswordChecker do
	describe "#check_password" do

		it "returns false for passwords fewer than 7 characters" do
			the_checker = PasswordChecker.new

			# result = the_checker.check_password_length

			expect( the_checker.check_password("nizar@example.com", "!aA2") ).to eq(false)
			expect( the_checker.check_password("nizar@example.com", "aaA!2") ).to eq(false)
			expect( the_checker.check_password("nizar@example.com", "1234!aA") ).to eq(true)
			
		end

		it "returns false if it does not contain at least 1 letter, 1 number and 1 symbol (e.g. '#', '%', etc) and is fewer than 7 characters" do
			the_checker = PasswordChecker.new

			expect( the_checker.check_password("nizar@example.com", "123456Aaa")).to eq(false)
			expect( the_checker.check_password("nizar@example.com", "123456Aa!")).to eq(true)

		end

		it "returns false if it does not contain at least 1 uppercase and 1 lowercase letter" do
			the_checker = PasswordChecker.new

			expect( the_checker.check_password("nizar@example.com", "apple!2")).to eq(false)
			expect( the_checker.check_password("nizar@example.com", "Apple!2")).to eq(true)

		end

		it "returns false if it does NOT contain either the name nor the domain of the email." do
			the_checker = PasswordChecker.new

			expect( the_checker.check_password("nizar@example.com", "aB3DSFSD@F")).to eq(true)
			expect( the_checker.check_password("nizar@example.com", "aB3DSnizarFSD@F")).to eq(false)
			expect( the_checker.check_password("nizar@example.com", "aB3DSexampleFSD@F")).to eq(false)

		end

		it "returns true for passwords that meet all criteria" do
			the_checker = PasswordChecker.new

			expect( the_checker.check_password("nizar@example.com", "aB3DSFSD@F")).to eq(true)

		end

	end

end