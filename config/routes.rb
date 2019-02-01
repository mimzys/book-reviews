Rails.application.routes.draw do
  root 'books#index'
  devise_for :users

  resources :books, only: [:index, :show, :new, :create]
  resources :reviews, only: [:create, :new]

  namespace :api do
    namespace :v1 do
      resources :books, only: [:show, :new, :index, :create]
      resources :reviews, only:[:new, :create, :show]
    end
  end
end
