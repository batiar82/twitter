Rails.application.routes.draw do
  get 'main/welcome'

  resources :tweets
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "main#welcome"
end
