Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'pages/home', to: 'pages#home'
  get '/about', to: 'pages#about'

  get '/catalog_items', to: 'catalog_items#index'
  get '/catalog_items/:id', to: 'catalog_items#show', as: 'catalog_item'

  resources :workshops

end
