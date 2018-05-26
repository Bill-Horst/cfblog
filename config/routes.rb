Rails.application.routes.draw do
  devise_for :users
  resources :users
  get 'pages/about'

  get 'pages/contact'

  resources :posts

  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
