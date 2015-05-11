class PostsController < ApplicationController
	def index
		@posts = Post.order 'id DESC'
	end

	def show
		@post = Post.find(params[:id])
		@comments = Comment.where("post_id = #{params[:id]}").order 'id DESC'
	end
end
