Rails.application.routes.draw do
  root controller: :recipes, action: :index
  resources :recipes, only: :index
end
