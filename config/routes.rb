Rails.application.routes.draw do
  root controller: :recipes, action: :index
  resources :recipes, only: [:new, :create, :show, :index]
end
