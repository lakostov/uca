Rails.application.routes.draw do
  get 'states/index'

  resources :beers
  resources :styles
  resources :breweries
  get 'welcome/index'
  root 'welcome#index'
  get '/states', to: 'states#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
