class CommentsController < ApplicationController
	def index
		@comments = Comment.where("post_id = #{params[:post_id]}").order 'id DESC'		
	end

	def new
		@comment = Comment.new
	end

	def user_params
		params.require(:comment).permit(:name, :email, :content, :post_id)
	end

	def create
		@comment = Comment.new(user_params)
		if @comment.save
			redirect_to(action: "show", id: @comment)
		else
			render action: "new"
		end
	end
end
