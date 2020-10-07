Rails.application.routes.draw do
  resources :sessions
  resources :secrets, only: [:index, :show]
  root 'application#login'
  post '/delete' => 'sessions#destroy'
  get '/secret' => 'secrets#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
