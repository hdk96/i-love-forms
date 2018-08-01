Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/new', to:"users#new"
  post '/new', to: 'users#create'
  get '/new2', to:"users#new2"
  post '/new2', to: 'users#create2'
  get '/new3', to:"users#new3"
  post '/new3', to: 'users#create3'
  get '/info', to:'users#info'

end
