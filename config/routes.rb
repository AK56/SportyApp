Rails.application.routes.draw do
  root 'members#index'
  resources :members, except: :destroy
  #namespace :members do
  get '/members/activity_chart/:id', to: 'members#activity_chart', as: 'member_activity_chart'
  #end 
  get '/organization/summary', to: 'organizations#index'
  get '/organizations/team_activity/:id', to: 'organizations#team_activity', as: 'team_activity_chart'
  get '/my/profile', to: 'members#show', :id => 2
  resources :teams, except: :destroy

  resources :sports, except: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
