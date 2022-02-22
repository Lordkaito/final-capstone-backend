Rails.application.routes.draw do
  resources :reservations
  namespace :api do
    namespace :v1 do
      resources :cars
      get '/all_reservations/', to: 'reservations#all_reservations'
      resources :reservations
    end
  end
end
