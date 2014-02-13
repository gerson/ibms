ActiveAdmin.register Advert do
  form :partial => "form"

  index do
    column :image do |ad|
      image_tag ad.image.url(:thumb)
    end
    default_actions
  end

  show do |ad|
    attributes_table do
      row :avatar do
        image_tag(ad.image.url(:thumb))
      end
    end
  end
end
