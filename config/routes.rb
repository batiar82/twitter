Rails.application.routes.draw do
  get 'main/welcome'

  resources :tweets
  #resources :users
  get "users" => "users#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "main#welcome"
  devise_scope :user do
    get '/sign-in' => "devise/sessions#new", :as => :login
end
end
