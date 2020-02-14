Rails.application.routes.draw do
  root 'gossips#index'
  get 'static_pages/team'
  get 'static_pages/contact'
  get 'static_pages/welcome'
  get 'static_pages/home'
  get 'static_pages/display'
  resources :gossips
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
