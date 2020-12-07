Rails.application.routes.draw do
  resources :learning_dictionaries
  resources :teaching_ideas
  get 'home/index'
  get '/test', to: 'home#test'
  devise_for :users
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #root to:"home#index"

  root to:'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
