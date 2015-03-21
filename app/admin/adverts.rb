ActiveAdmin.register Advert do
  form :partial => "form"

  index do
    column :image do |ad|
      image_tag ad.image.url(:thumb)
    end
    column :slider
    column :ads
    default_actions
  end

  show do |ad|
    attributes_table do
      row :avatar do
        image_tag(ad.image.url(:thumb))
      end
      row :slider
      row :ads
    end
  end
end
