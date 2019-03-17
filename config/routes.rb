Rails.application.routes.draw do
  resources :comedians, only: [:index, :new, :create, :show]
  root "home#home"
  get '/comedian/:id/joke', to: 'comedians#joke', as: :comedian_joke
  get '/comedian/:id/:joke', to: 'comedians#show', as: :comedian_show_joke
end
