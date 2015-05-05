class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def show (post)
		@comment = post.find(params[:id])
	end

end
