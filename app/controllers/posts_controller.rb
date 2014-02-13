class PostsController < ApplicationController
  def index
    @posts = Post.search(params[:search]).page(params[:page]).per(3).order("created_at DESC")
  end

  def show
    @post = Post.find(params[:id])
    @posts = Post.where("id != ?", @post).limit(5).order("created_at DESC")
    @ads = Advert.limit(5).order("RANDOM()")
  end
end
