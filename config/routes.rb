Rails.application.routes.draw do
  get 'account/page'

  resources :workshops 
  resources :trainers
  resources :efforts

  root 'home#page'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
