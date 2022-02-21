Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cars
      resources :reservations
    end
  end
end