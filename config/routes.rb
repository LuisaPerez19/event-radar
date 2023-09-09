Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :events do
    get :organiser, on: :member
    resources :bookings, only: [ :new, :create ]
    # resources :reviews, only: [ :new, :create ]
  end

  resources :bookings, only: [ :index, :show ]



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
