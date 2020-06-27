Rails.application.routes.draw do
  root 'toppages#home'
  post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
  delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'
  get 'search', to: 'microposts#index'
  get 'post', to: 'microposts#new'
  post 'post', to: 'microposts#create'
  get 'signup', to: 'users#new'
  get    'login',   to: 'sessions#new'
  post   'login',   to: 'sessions#create'
  delete 'logout',  to: 'sessions#destroy'
  resources :users
  resources :microposts
end
