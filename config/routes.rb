
Rails.application.routes.draw do
  get 'users/all' => 'users#all', :as => 'show_users'
  get 'users/select/:id' => 'users#select', :as => 'select_users'

  get 'pages/welcome'
  root to: 'pages#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  # post '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/weather/:city' => 'weather#city'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
