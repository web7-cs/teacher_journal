Rails.application.routes.draw do
  devise_for :users
  get '/', to: 'pages#index'
  resources :teaching_ideas
  resources :learning_dictionaries
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :users do
    member do
      get :following, :followers
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
