Rails.application.routes.draw do
  devise_for :users
  resources :users
  get 'pages/about'

  resources :posts do
    resources :comments
  end

  resources :categories
  resources :tags

  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
