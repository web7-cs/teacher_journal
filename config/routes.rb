Rails.application.routes.draw do
  resources :learning_dictionaries
  resources :teaching_ideas
  get '/', to: 'static_pages#index'
  root to: 'static_pages#index'
end
