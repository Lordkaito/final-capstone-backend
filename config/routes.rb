Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      resources :cars, only: [:index, :show, :create, :update, :destroy] 
      resources :reservations, only: [:index, :show, :create, :update, :destroy] 
    end
  end
end