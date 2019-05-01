# frozen_string_literal: true

Rails.application.routes.draw do
  root controller: :recipes, action: :index
  resources :recipes do
    resources :ingredients, only: [:create]
  end
  resources :menus, only: %i[show update]

  resources :users, only: %i[new create]
  get "/sign_up", to: "users#new", as: :sign_up

  resources :sessions, only: %i[new create destroy]
  get "/log_in", to: "sessions#new", as: :log_in
  delete "/log_out", to: "sessions#destroy", as: :log_out
end
