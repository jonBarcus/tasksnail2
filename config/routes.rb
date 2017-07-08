Rails.application.routes.draw do
  resources :tasks
  devise_for :users, controllers: { registrations: "users/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'home#index'
  root 'tasks#index'

  get '/complete/:id', to: 'tasks#complete', as: 'complete'
end
