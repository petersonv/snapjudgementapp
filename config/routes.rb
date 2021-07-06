Rails.application.routes.draw do
  resources :questions
  resources :registrations, only: [:create]
  resources :users, only: [:create, :show, :index] 
  root to: 'static#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
