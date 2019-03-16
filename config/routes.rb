Rails.application.routes.draw do
  resources :comedians, only: [:index, :new, :create, :show]
end
