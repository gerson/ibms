Ibms::Application.routes.draw do

  root :to => 'homes#index'

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  get "contact_us", :action => :contact_us, :controller => :homes
  get "about_us", :action => :about_us, :controller => :homes
  get "eres_nuevo", :action => :eres_nuevo, :controller => :homes

  resources :posts, only: [:show, :index]
  resources :ads, only: [:show]
  resources :messages, only: [:create]

end

