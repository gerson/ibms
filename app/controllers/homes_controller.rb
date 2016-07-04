class HomesController < ApplicationController

  def index
    @posts = Post.limit(2).order("created_at DESC")
    @ads = Advert.where(slider: true).order("RANDOM()")
  end

  def contact
  end

  def about_us
  end

  def eres_nuevo
    @posts = Post.where("id != ?", @post).limit(5).order("created_at DESC")
    @ads = Advert.where(ads: true).limit(5).order("RANDOM()")
  end
end
