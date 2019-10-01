Rails.application.routes.draw do
  # localhost:3000/api/v1/login
  namespace :api do
    namespace :v1 do
      resources :products
      resources :drinks
      resources :proportions
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end


end
