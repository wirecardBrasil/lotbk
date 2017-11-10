Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/stats', to: 'stats#show'
  get '/application', to: 'application#show'
end
