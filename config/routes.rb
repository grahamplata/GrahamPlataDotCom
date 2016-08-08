Rails.application.routes.draw do
  resources 'posts'

  get 'pages/home'

  root 'pages#home'
end
