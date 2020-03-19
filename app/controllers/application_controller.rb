class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index 
    @bloggers = Blogger.all 
    @destination = Destination.all 
    @posts = Post.all 
    
    render :index
end
