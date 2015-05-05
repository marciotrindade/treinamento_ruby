class PostsController < ApplicationController
  #before_action :set_post, only: [:show]

  # GET /users
  # GET /users.json
  def index
    @posts = Post.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.all
  end

end
