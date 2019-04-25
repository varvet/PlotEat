# frozen_string_literal: true

Rails.application.routes.draw do
  root controller: :recipes, action: :index
  resources :recipes do
    resources :ingredients, only: [:create]
  end
  resources :menus, only: %i[show update]
end
