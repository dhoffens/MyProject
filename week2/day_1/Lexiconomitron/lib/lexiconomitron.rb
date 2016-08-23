class Lexicon
	def eat_t(string)
		new_string = string.tr("tT", "" )
		
	end
	def shazam(array)
		new_array = []
		new_array << eat_t(array[0].reverse)
		new_array << eat_t(array[-1].reverse)
		new_array

	end
	def oompa_loompa(array)
		new_array = []

		array.select{|word|
			word.length < 4
		}.each {|word|
			new_array << eat_t(word)

		}
		new_array
	end
	

end