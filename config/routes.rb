Rails.application.routes.draw do
  get '/shoes/most_expensive', to: 'shoes#most_expensive'
  #  get '/shoes', to: 'shoes#index'
  #  get '/shoes/:id', to: 'shoes#show', as: 'shoe'

   resources :shoes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
