class PostsController < ApplicationController
  def index 
    @posts = Post.order(created_at: :desc)
    
    # render json: {message: 'Yahoo'}
    render json: @posts
  end

  def create 
    @post = Post.new # parametros

    if @post.save 
      render json: @post, status: :created 
    else
      render json: @post.erros, status: :unprocessable_entity
    end
  end
end
