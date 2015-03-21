class HomesController < ApplicationController

  def index
    @posts = Post.limit(2).order("created_at DESC")
    @ads = Advert.where(slider: true).order("RANDOM()")
  end

  def contact
  end

  def about_us
  end

end
