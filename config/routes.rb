Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/stats', to: 'application#show'
  resources :character, only: [:find, :show, :update, :create]
  resources :score, only: [:index, :show]
  resources :item
end
