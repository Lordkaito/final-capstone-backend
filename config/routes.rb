Rails.application.routes.draw do
  resources :reservations
  namespace :api do
    namespace :v1 do
      resources :cars do
        resources :reservation
      end
    end
  end
end
