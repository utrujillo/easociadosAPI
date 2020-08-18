Rails.application.routes.draw do
  get 'users/create'
  namespace :api do
    namespace :v1 do
      resources :categories
    end
  end

  resources :users, only: [:create]
end
