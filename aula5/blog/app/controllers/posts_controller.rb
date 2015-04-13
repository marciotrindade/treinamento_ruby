class PostsController < Application_Controler

  def index 
      @posts = Post.all    
  end
  
end