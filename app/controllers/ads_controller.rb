class AdsController < ApplicationController

  def show
    @ad = Advert.find(params[:id])
    render :layout => false
  end
end
