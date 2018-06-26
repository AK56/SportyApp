Rails.application.routes.draw do
  root 'members#index'
  resources :members
  get '/organization/summary', to: 'organizations#index'
  get '/my/profile', to: 'members#show', :id => 2
  resources :teams

  resources :sports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
