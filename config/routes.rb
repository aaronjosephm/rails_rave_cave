Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'profile', to: "users#profile"

  get 'profile/warehouses', to: "users#warehouses"

  get 'bookings/sent', to: "bookings#sent"

  resources :bookings, except: [ :index, :new, :create ]

  resources :warehouses do
    resources :bookings, only: [ :new, :create]
  end

  get 'bookings/received', to: "bookings#received"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
