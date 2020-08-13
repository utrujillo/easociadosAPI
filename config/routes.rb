Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categories
    end
  end

  resources :users, only: [:create]
end