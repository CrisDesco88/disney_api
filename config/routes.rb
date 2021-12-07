Rails.application.routes.draw do
  devise_for :users, skip: %i[registrations sessions passwords]
  namespace :api do
    namespace :v1 do
      resources :generos
      resources :pelicula_series
      resources :personajes
      resources :sessions, only: [:create, :destroy]
      devise_scope :user do
        post '/signup', to: 'registrations#create'
        post '/login', to: 'sessions#create'
        delete '/logout', to: 'sessions#destroy'
      end
    end
  end
end

