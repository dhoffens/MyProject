class ConcertsController < ApplicationController

	def index
		@concerts_today = Concert.where(date: Time.now..Time.now.end_of_day)
		@concerts_month = Concert.where(date: Time.now.end_of_day..Time.now.end_of_month)
	end

	def show
		#display a single concert from an id
		@concert = Concert.find_by(id: params[:id])
		@comments = @concert.comments 
		@new_comment = @concert.comments.new
	end

	def new
		#display form page for new concert
		@new_concert = Concert.new
	end

	def create
		#create a new concert from params passed in form
		@new_concert = Concert.new(new_concert_params)
		
		if @new_concert.save
			redirect_to "/concerts/#{@new_concert.id}"
		else
			render 'new'
		end
	end

	def new_concert_params
		params.require(:concert).permit(:artist, :venue, :city, :date, :price, :description)
	end
end