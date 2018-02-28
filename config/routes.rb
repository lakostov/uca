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
  

  get '/api/beer', to: 'api#beer'
  get '/api/brewery', to: 'api#brewery'
  get '/api/state', to: 'api#state'
  get '/api/style', to: 'api#style'

  match '*a', :to => 'error#not_found', via: :get


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
