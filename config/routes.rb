Rails.application.routes.draw do
  resources :entries
  devise_for :users
  root 'requests#index'
#  get 'requests/index'
  get '/requests', to: 'requests#index'
  resources :requests
end
