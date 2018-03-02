Rails.application.routes.draw do
  get 'states/index'

  resources :beers
  resources :styles
  resources :breweries
  get 'welcome/index'
  root 'welcome#index'
  get '/states', to: 'states#index'
  get '/states/:id', to: 'states#show'
  get '/states/beers/:id', to: 'states#beers'
  get '/breweries/:id', to: 'breweries#show'
  get '/beers/:id', to: 'beers#show'
  post '/breweries/search', to: 'breweries#search'
  post '/styles/search', to: 'styles#search'
  post '/beers/search', to: 'beers#search'
  get '/topten/craftystates', to: 'topten#craftystates'
  get '/topten/brewedstyles', to: 'topten#brewedstyles'
  get '/topten/strongestbrews', to: 'topten#strongestbrews'

  get '/styles/:id', to: 'styles#show'
  
  get '/api/beer', to: 'api#beer'
  get '/api/brewery', to: 'api#brewery'
  get '/api/state', to: 'api#state'
  get '/api/style', to: 'api#style'
  

  match '*a', :to => 'error#not_found', via: :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
