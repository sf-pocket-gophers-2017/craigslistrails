Rails.application.routes.draw do
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'categories#index'

  get '/login' => 'sessions#login'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#logout'

  resources :categories, only: [:index, :show] do
    resources :articles, only: [:index, :show, :edit, :update, :destroy]
  end

  resources :articles, only: [:new, :create]
  resources :users, only: [:new, :create]
end
