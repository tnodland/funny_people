Rails.application.routes.draw do
  resources :comedians, only: [:index, :create, :show]
end
