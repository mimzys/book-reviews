Rails.application.routes.draw do
  root 'books#index'
  devise_for :users

  resources :books, only: [:index, :show]
  
  namespace :api do
    namespace :v1 do
      resources :books, only: [:show]
    end
  end
end
