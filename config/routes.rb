Rails.application.routes.draw do
  devise_for :users
  root to: "cars#index"
  resources :cars, except: :index do
    collection do
      get :yours
    end
    resources :reviews, only: :create
    resources :bookings, only: :create
  end
end
