class Programmer

	include Caffeine_Consumer
	include Payable

	def program
		consume_caffeine
		do_wonderful_things_with_computers
		receive_salary
	end

	def do_wonderful_things_with_computers
		puts "How do I turn this on?"
		puts "click click clack"
		puts "BOOM!"
	end
end