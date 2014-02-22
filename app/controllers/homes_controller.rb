class HomesController < ApplicationController

  def index
    @posts = Post.limit(2).order("created_at DESC")
  end

  def contact
  end

  def about_us
  end

end
