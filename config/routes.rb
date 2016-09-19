Rails.application.routes.draw do
  devise_for :installs
  devise_for :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  get 'pages/home'
  get 'static_pages/portfolio'
  root 'pages#home'
  get '*path' => redirect('/')
end
