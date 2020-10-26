Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :members, only: [:index, :create, :show, :update, :destroy]
      resources :users, only: [:index, :create, :show, :update, :destroy]
      post '/login' => 'auth#login'
      get '/auth' => 'auth#persist'
    end
  end
end
