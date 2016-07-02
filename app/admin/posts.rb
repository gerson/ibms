ActiveAdmin.register Post do

  permit_params :content, :title, :avatar, :author

  form :partial => "form"

  index do
    column :avatar do |post|
      image_tag post.avatar.url(:thumb)
    end
    column :title, :sortable => :title do |post|
      link_to post.title, admin_post_path(post)
    end
    column :content do |post|
      truncate(post.content, length: 600).html_safe
    end
    column :author do |post|
      post.author
    end
    actions
  end

  show do |post|
    attributes_table do
      row :title
      row :content do
        truncate(post.content, length: 600).html_safe
      end
      row :author
      row :avatar do
        image_tag(post.avatar.url(:thumb))
      end
    end
  end
end
