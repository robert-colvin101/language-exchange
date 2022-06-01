Rails.application.routes.draw do
  root to: 'pages#home'
  get 'lessons/references'
  get 'lessons/users'
  get 'profile', to: 'pages#profile'
  devise_for :users
    resources :users, only: [:index] do
  resources :lessons
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
