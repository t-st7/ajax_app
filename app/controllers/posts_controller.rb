class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
  end


  def create
    post = Post.create(content: params[:content], checked: false)
    render json:{ post: post }
  end

end