Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/auth/:provider/callback', to: 'sessions#create'
get '/auth/failure', to: 'sessions#auth_fail'
get '/sign_out', to: 'sessions#destroy', as: :sign_out
resources :dashboard
resources :votes, only: [:create]
  resources :users, only: [:show]
  resources :polls
root to: 'polls#index'
end
