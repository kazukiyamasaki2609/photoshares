Rails.application.routes.draw do
  root 'toppages#home'
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
