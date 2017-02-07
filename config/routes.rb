Rails.application.routes.draw do
  get 'alltask/create'

  get 'simpletask/create'

  get 'longtask/create'
  post '/createlong', to: 'simpletask#createlong'
  post '/createtemp', to: 'simpletask#createmp'
  post '/createsimple', to: 'simpletask#createsimple'
  post '/updatelong', to: 'simpletask#updatelong'
  post '/updatetemp', to: 'simpletask#updatetemp'
  post '/updatesimple', to: 'simpletask#updatesimple'
  get '/:slug', to: 'listask#details'
  post '/', to: "listask#create"
  post '/updatelist', to: "listask#update"
  root to: "listask#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end