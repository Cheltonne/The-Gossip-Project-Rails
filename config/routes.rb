Rails.application.routes.draw do
  root 'gossip#all'
  get 'contact', to: 'contact#show'
  get 'team', to: 'team#show'
  resources :gossip do 
    resources :comments, only: [:create, :edit, :update, :destroy]
  end
  resources :users
  resources :sessions
  resources :city
  get 'authorized', to: 'sessions#page_requires_login'
end