Rails.application.routes.draw do
#  get 'requests/index'
  get '/requests', to: 'requests#index'
  resources :requests
end
