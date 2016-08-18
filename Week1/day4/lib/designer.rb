class Designer

	include Caffeine_Consumer
	include Payable

	def design_things
		consume_caffeine
		select_typography
		select_color
		receive_salary
	end

	def select_typography
		puts "Pick those fonts!"
		puts "Write some stuff..."
	end

	def select_color
		puts "Let's see some colors...?"
		puts "That looks like shit!"
	end

end