Rails.application.routes.draw do
  
  root 'pages#home'

  devise_for :users

  get '/profile', to: 'profiles#show'

  post '/profile', to: 'profiles#create'

  get '/profile/edit', to: 'profiles#edit'

  patch '/profile', to: 'profiles#update'


  get '/requests/new', to: 'requests#new'

  get '/request', to: 'requests#show'

  post '/request', to: 'requests#create'

  get '/request/edit', to: 'requests#edit'

  patch '/request', to: 'requests#update'

end