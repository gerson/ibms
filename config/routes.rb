Ibms::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'homes#index'

  get "contact_us", :action => :contact_us, :controller => :homes
  get "about_us", :action => :about_us, :controller => :homes

  resources :posts, only: [:show, :index]

end

