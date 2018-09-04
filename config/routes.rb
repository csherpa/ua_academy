Rails.application.routes.draw do
  devise_for :admins

  root to: 'welcome#index'
  resources :welcome
  # get '/welcome', to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :admins
  resources :students
  resources :instructors
  resources :courses
  resources :cohorts
  
end
