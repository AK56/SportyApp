Rails.application.routes.draw do
  root 'members#index'
  resources :members
  get '/organization/summary', to: 'organizations#index'
  resources :teams

  resources :sports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
