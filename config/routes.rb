Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :warehouses do
    resources :bookings, only: [ :new, :create]
  end

  resources :bookings, except: [ :index, :new, :create ]

  get 'profile', to: "users#profile"

  get 'bookings/received', to: "bookings#received"
  get 'bookings/sent', to: "bookings#sent"
  get 'bookings/:warehouse_id', to: "bookings#warehouse_booking_index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
