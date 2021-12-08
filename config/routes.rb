Rails.application.routes.draw do
  devise_for :users, skip: %i[registrations sessions passwords]
  namespace :api do
    namespace :v1 do
      resources :generos

      resources :pelicula_series
      get '/name', to: 'pelicula_series#show', as: 'name'
      get '/genre', to: 'pelicula_series#show', as: 'genre'
      get '/order_asc' to: 'pelicula_series#show', as: 'order_asc'
      get '/order_desc' to: 'pelicula_series#show', as: 'order_desc'

      resources :personajes
      get '/name', to: 'personajes#show', as:'name'
      get '/age', to: 'personajes#show', as:'age'
      get '/movies', to: 'personajes#show', as:'movies'
      
      resources :sessions, only: [:create, :destroy]
      devise_scope :user do
        post '/signup', to: 'registrations#create'
        post '/login', to: 'sessions#create'
        delete '/logout', to: 'sessions#destroy'
      end
    end
  end
end

