Rails.application.routes.draw do
  get 'states/index'

  resources :beers
  resources :styles
  resources :breweries
  get 'welcome/index'
  root 'welcome#index'
  get '/states', to: 'states#index'
  get '/states/:id', to: 'states#show'
  get '/breweries/:id', to: 'breweries#show'
  get '/beers/:id', to: 'beers#show'
  get '/styles/:id', to: 'styles#show'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
