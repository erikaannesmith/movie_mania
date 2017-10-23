Rails.application.routes.draw do
  root "welcome#index"

  resources :directors, only: [:new, :create, :show] do
    resources :movies, only: [:index, :create, :new]
  end

  resources :movies, except: [:create, :new]

  resources :users, only: [:new, :create, :show]

  delete '/logout', to: 'sessions#destroy'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
