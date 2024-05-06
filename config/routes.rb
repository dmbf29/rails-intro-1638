Rails.application.routes.draw do
  # The routes will catch any path in our app, and send to the controller

  # HTTP_VERB '/path', to: 'controller#action', as: :prefix (aka nickname)
  get '/about', to: 'pages#about', as: :about
  get '/contact', to: 'pages#contact', as: :contact
  # get '/', to: 'pages#home', as: :root
  # this is a shortcut for the line above
  root to: 'pages#home'
end
