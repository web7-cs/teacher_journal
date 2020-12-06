Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #root to:"home#index"

  root to:'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
