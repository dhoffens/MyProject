class TextInspectionsController < ApplicationController
	
	def new
		render 'new'
	end

	def create
		@text = params[:text_inspection][:user_text]
		@word_count = @text.split(" ").length
		
		@frequency = @text.split(" ")
		@counts = {}
		@frequency.each do |word|
			if @counts[word] 
			@counts[word] += 1
			else
				@counts[word] = 1
			end
		end
		@sorted = @counts.sort_by {|a,b| b}.reverse.take(10)
		render 'results'
	end
end