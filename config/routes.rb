Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :machines do
    resources :bookings, only: [:index, :new, :create]
  end
  resources :bookings, only: [:destroy, :update, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'dashboard', to: "pages#dashboard"
  get 'hisotrical_rulers', to: "pages#hisotrical_rulers"
  get 'bookingrequest', to: "pages#bookingrequest"
  patch 'declinebooking', to: "bookings#declinebooking"
end
