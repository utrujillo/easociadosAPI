Rails.application.routes.draw do
  # devise_for :users
  namespace :api do
    namespace :v1 do
      resources :categories
      resources :jobs
      resources :job_images do
        post 'filter', on: :collection
      end
      resources :sessions, only: [:create, :destroy]
    end
  end

  post "login", to: "auth#login"
  resources :users, only: [:create]
end
