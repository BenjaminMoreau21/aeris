Rails.application.routes.draw do
  devise_for :users
  root to: "cars#index"
  resources :cars, except: :index do
    resources :reviews, only: :create
  end
end
