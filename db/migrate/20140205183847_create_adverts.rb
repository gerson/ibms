class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.attachment :image
      t.timestamps
    end
  end
end
