Rails.application.routes.draw do
  get 'lessons/references'
  get 'lessons/users'
  devise_for :users
  resources :restaurants
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
