Rails.application.routes.draw do
  get 'main/welcome'

  resources :tweets
  #resources :users do
  #  get :follow, on: :member
  
  #end
  get '/users/:id/follow', to: 'users#follow', as: 'follow_user'
  get '/users/:id/like', to: 'users#like', as: 'like_tweet'
  get '/users/:id/tweets', to: 'users#tweets', as: 'user_tweets'
  
  get "tweet/timeline" => "tweets#timeline"
  get "users" => "users#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "main#welcome"
  devise_scope :user do
    get '/sign-in' => "devise/sessions#new", :as => :login
end
end
