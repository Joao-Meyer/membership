Rails.application.routes.draw do
  namespace :member do
    resources :communicants
    # resources :non_communicants
  end

  root "static_pages#home"

  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "login", to: "sessions#new"

  put "user", to: "users#update"
  get "user", to: "users#edit"
  delete "user", to: "users#destroy"

  resources :active_sessions, only: [ :destroy ] do
    collection do
      delete "destroy_all"
    end
  end
end
