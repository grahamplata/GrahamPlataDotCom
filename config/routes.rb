Rails.application.routes.draw do
  resources :posts
  resources :contacts, only: [:new, :create]
  get 'pages/home'
  root 'pages#home'
end
