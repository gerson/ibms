class PostsController < ApplicationController
  def index
    @posts = Post.search(params[:search]).page(params[:page]).per(1).order("DESC created_at")
  end

  def show
  end
end
