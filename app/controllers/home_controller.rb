class HomeController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

  
  def index
    
    @posts = Post.all.order("created_at DESC")
    @categories = Category.all
    
  end
end
