class AddAdsAndSliderToAdvert < ActiveRecord::Migration
  def change
    add_column :adverts, :ads, :boolean, default: true
    add_column :adverts, :slider, :boolean, default: false
  end
end
