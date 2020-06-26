Rails.application.routes.draw do
  root 'toppages#home'
  get 'signup', to: 'users#new'
  resources :users
end
