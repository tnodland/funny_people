Rails.application.routes.draw do
  resources :comedians, only: [:index, :new, :create, :show]
  get '/comedian/:id/joke', to: 'comedians#joke', as: :comedian_joke
end
