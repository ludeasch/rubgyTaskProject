Rails.application.routes.draw do
  get 'temporaltask/create'

  get 'longtask/create'

  get 'simpletask/create'

  post '/', to: "listask#create"
  root to: "listask#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
