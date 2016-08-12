Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  get 'pages/home'
  root 'pages#home'
  get '*path' => redirect('/')
end
