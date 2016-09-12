class CommentsController < ApplicationController

	def index
		@comments = Comment.find_by(concert_id: params[:id])
	end

	def create
		#create a new comment from params passed in form
		@concert = Concert.find(params[:concert_id])
		@new_comment = @concert.comments.new(new_comment_params)
		@new_comment.save
		redirect_to("/concerts/#{@concert.id}")
	end

	private

	def new_comment_params
		params.require(:comment).permit(:name, :comment)
	end
end

