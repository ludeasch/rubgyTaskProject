Rails.application.routes.draw do
  get 'temporaltask/create'

  get 'longtask/create'

  get 'simpletask/create'

  get '/home/home'
  resources :listask
  root :to => "home#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
